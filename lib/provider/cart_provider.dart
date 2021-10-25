import 'package:flutter/material.dart';
import 'package:shamo_app/models/cart_model.dart';
import 'package:shamo_app/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts;

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProductModel product) {
    if (productExist(product)) {
      int index =
          _carts.indexWhere((element) => element.product.id == product.id);
      _carts[index].quantity++;
    } else {
      _carts.add(CartModel(id: _carts.length, product: product, quantity: 1));
    }

    notifyListeners();
  }

  productExist(ProductModel product) {
    if (_carts.indexWhere((element) => element.product.id == product.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
