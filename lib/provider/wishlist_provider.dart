import 'package:flutter/material.dart';
import 'package:shamo_app/models/product_model.dart';

class WishListProvider with ChangeNotifier {
  List<ProductModel> _wishList = [];

  List<ProductModel> get wishList => _wishList;

  set wishList(List<ProductModel> newWishList) {
    _wishList = newWishList;
    notifyListeners();
  }

  setProducts(ProductModel product) {
    if (isWishList(product)) {
      _wishList.removeWhere((element) => element.id == product.id);
    } else {
      _wishList.add(product);
    }

    notifyListeners();
  }

  isWishList(ProductModel product) {
    if (_wishList.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
