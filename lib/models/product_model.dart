import 'package:shamo_app/models/categori_model.dart';
import 'package:shamo_app/models/galleri_model.dart';

class ProductModel {
  int id;
  String name;
  double price;
  String description;
  String tags;
  CategoriModel category;
  DateTime createdAt;
  DateTime updatedAt;
  List<GalleriModel> galleries;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.tags,
    this.description,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoriModel.fromJson(json['category']);
    galleries =
        json['galleries'].map((image) => GalleriModel.fromJson(image)).toList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((image) => image.toJson()).toList(),
    };
  }
}
