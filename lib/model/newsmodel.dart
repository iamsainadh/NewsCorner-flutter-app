class NewsModel {
  Source? source;
  String? urlToImage;
  String? title;
  String? description;
  String? author;

  NewsModel(
      {required this.urlToImage,
      required this.title,
      required this.description,
      required this.author});

  NewsModel.fromJson(Map<String, dynamic> json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    urlToImage = json["urlToImage"];
    title = json["title"];
    description = json["description"];
    author = json["author"];
  }
}

class Source {
  String? name;

  Source({this.name});

  Source.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}
