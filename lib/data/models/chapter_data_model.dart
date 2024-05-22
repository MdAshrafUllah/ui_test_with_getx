class ChapterDataModel {
  int? id;
  int? chapterId;
  int? bookId;
  String? title;
  int? number;
  String? hadisRange;
  String? bookName;

  ChapterDataModel({
    this.id,
    this.chapterId,
    this.bookId,
    this.title,
    this.number,
    this.hadisRange,
    this.bookName,
  });

  factory ChapterDataModel.fromJson(Map<String, dynamic> json) =>
      ChapterDataModel(
        id: json["id"],
        chapterId: json["chapter_id"],
        bookId: json["book_id"],
        title: json["title"],
        number: json["number"],
        hadisRange: json["hadis_range"],
        bookName: json["book_name"],
      );
}
