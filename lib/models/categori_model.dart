class CategoriModel {
  int id;
  String name;

  CategoriModel({this.id, this.name});

  CategoriModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
