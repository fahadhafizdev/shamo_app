import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  String _statusCategory = 'all';

  String get statusCategory => _statusCategory;

  set statusCategory(String newValue) {
    _statusCategory = newValue;
    notifyListeners();
  }
}
