import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  bool _authenticated = false;

  bool get authenticated => _authenticated;

  void login({Map credentials}) {
    _authenticated = true;

    notifyListeners();
  }

  void logout() {
    _authenticated = false;

    notifyListeners();
  }
}
