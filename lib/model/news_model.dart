class NewsModel {
  int id;
  String photoUrl;
  String linkUrl;
  String name;

  NewsModel({this.id, this.photoUrl, this.linkUrl, this.name});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
        id: json['id'] as int,
        photoUrl: json['photo_url'] as String,
        linkUrl: json['link_url'] as String,
        name: json['name'] as String);
  }
}
