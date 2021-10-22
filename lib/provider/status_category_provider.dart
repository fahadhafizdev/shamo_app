import 'package:flutter/material.dart';

class StatusCategoryProvider with ChangeNotifier {
  String _statusCategory = 'All Shoes';

  String get statusCategory => _statusCategory;

  set statusCategory(String newValue) {
    _statusCategory = newValue;
    notifyListeners();
  }
}
