class Book {
  int? id;
  String? name;
  String? imageURL;
  String? dateOfIssue;
  String? author;

  Book({
    this.id,
    this.name,
    this.imageURL,
    this.dateOfIssue,
    this.author,
  });

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageURL'];
    dateOfIssue = json['dateOfIssue'];
    author = json['author'];
  }
}
