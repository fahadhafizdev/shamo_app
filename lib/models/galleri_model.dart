class GalleriModel {
  int id;
  String url;

  GalleriModel({
    this.id,
    this.url,
  });

  GalleriModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
