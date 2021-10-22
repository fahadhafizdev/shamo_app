import 'package:flutter/material.dart';
import 'package:shamo_app/models/categori_model.dart';
import 'package:shamo_app/services/category_service.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoriModel> _category = [];

  List<CategoriModel> get category => _category;

  set setCategory(List<CategoriModel> newValue) {
    _category = newValue;
    notifyListeners();
  }

  getCategory() async {
    try {
      List<CategoriModel> category = await CategoryService().getCategory();
      _category = category;
    } catch (e) {
      print(e);
    }
  }
}
