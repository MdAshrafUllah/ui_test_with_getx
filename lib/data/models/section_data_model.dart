class SectionDataModel {
  int? id;
  int? bookId;
  String? bookName;
  int? chapterId;
  int? sectionId;
  String? title;
  String? preface;
  String? number;

  SectionDataModel({
    this.id,
    this.bookId,
    this.bookName,
    this.chapterId,
    this.sectionId,
    this.title,
    this.preface,
    this.number,
  });

  factory SectionDataModel.fromJson(Map<String, dynamic> json) =>
      SectionDataModel(
        id: json["id"],
        bookId: json["book_id"],
        bookName: json["book_name"],
        chapterId: json["chapter_id"],
        sectionId: json["section_id"],
        title: json["title"],
        preface: json["preface"],
        number: json["number"],
      );
}
