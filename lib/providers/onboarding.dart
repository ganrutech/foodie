import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding with ChangeNotifier {
  bool _visited;

  bool get isVisited {
    return _visited != null;
  }

  Future<void> visitedHandler() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('visited', true);
    _visited = true;
    notifyListeners();
  }

  Future<bool> isOnboarded() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('visited')) {
      return false;
    }
    _visited = true;
    notifyListeners();
    return true;
  }

  Future<void> logout() async {
    _visited = null;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
