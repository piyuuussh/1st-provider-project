import 'package:flutter/material.dart';

class numberlist extends ChangeNotifier {
  List<int> Num = [1, 2, 3, 4];

  void add() {
    int last = Num.last;
    Num.add(last + 1);
    notifyListeners();
  }
}
