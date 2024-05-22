class BookDataModel {
  int? id;
  String? title;
  String? titleAr;
  int? numberOfHadis;
  String? abvrCode;
  String? bookName;
  String? bookDescr;

  BookDataModel(
      {this.id,
      this.title,
      this.titleAr,
      this.numberOfHadis,
      this.abvrCode,
      this.bookName,
      this.bookDescr});

  factory BookDataModel.fromJson(Map<String, dynamic> json) => BookDataModel(
        id: json["id"],
        title: json["title"],
        titleAr: json["title_ar"],
        numberOfHadis: json["number_of_hadis"],
        abvrCode: json["abvr_code"],
        bookName: json["book_name"],
        bookDescr: json["book_descr"],
      );
}
