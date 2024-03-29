import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String _token = "";
  String get token => _token;
  set token(String newToken) {
    _token = newToken;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
