class Document{
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;
  Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  static List<Document> doc_list=[
    Document("The Impact Of Artifical Intelligence On Innovation",
  'https://www.dcpehvpm.org/E-Content/BCA/BCA-III/artificial_intelligence_tutorial.pdf','20-2-2023', 40),
    Document("Flutter", 'https://www.tutorialspoint.com/flutter/flutter_tutorial.pdf','20-2-2022', 40),

  ];
}