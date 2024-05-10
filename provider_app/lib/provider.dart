import 'package:flutter/material.dart';

class Provider_Class with ChangeNotifier {
  int _count = 0;
  get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
