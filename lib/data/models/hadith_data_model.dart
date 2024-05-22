class HadithDataModel {
  int? hadithId;
  int? bookId;
  String? bookName;
  int? chapterId;
  int? sectionId;
  String? narrator;
  String? bn;
  String? ar;
  String? arDiCess;
  String? note;
  int? gradeId;
  String? grade;
  String? gradeColor;

  HadithDataModel({
    this.hadithId,
    this.bookId,
    this.bookName,
    this.chapterId,
    this.sectionId,
    this.narrator,
    this.bn,
    this.ar,
    this.arDiCess,
    this.note,
    this.gradeId,
    this.grade,
    this.gradeColor,
  });

  factory HadithDataModel.fromJson(Map<String, dynamic> json) =>
      HadithDataModel(
        hadithId: json["hadith_id"],
        bookId: json["book_id"],
        bookName: json["book_name"],
        chapterId: json["chapter_id"],
        sectionId: json["section_id"],
        narrator: json["narrator"],
        bn: json["bn"],
        ar: json["ar"],
        arDiCess: json["ar_diacless"],
        note: json["note"],
        gradeId: json["grade_id"],
        grade: json["grade"],
        gradeColor: json["grade_color"],
      );
}
