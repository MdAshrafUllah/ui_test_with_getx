import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = "hadith_db.db";
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);

    bool dbExists = await databaseExists(path);

    if (!dbExists) {
      ByteData data =
          await rootBundle.load(join('assets/database/', _databaseName));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
    }
    return await openDatabase(path);
  }

  static Future<List<Map<String, dynamic>>> queryAllRows(String table) async {
    final db = await database;
    return await db.query(table);
  }
}
