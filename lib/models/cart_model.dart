import 'package:shamo_app/models/product_model.dart';

class CartModel {
  int id;
  ProductModel product;
  int quantity;

  CartModel({this.id, this.product, this.quantity});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = json['product'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product.toJson(),
      'quantity': quantity,
    };
  }

  // double getTotalPrice() {
  //   return product.price * quantity;
  // }
}
