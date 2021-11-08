import 'package:flutter/material.dart';
import 'package:shamo_app/models/user_model.dart';
import 'package:shamo_app/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> updateProfile({
    String name,
    String username,
    String email,
    String token,
  }) async {
    try {
      if (await AuthService().updateProfil(
        email: email,
        name: name,
        username: username,
        token: token,
      )) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> register({
    String name,
    String username,
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login(String email, String password) async {
    try {
      UserModel user = await AuthService().login(email, password);

      _user = user;

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
