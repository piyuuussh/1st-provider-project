import 'package:flutter/material.dart';

class numberlist extends ChangeNotifier {
  List<int> Num = [1, 2, 3, 4, 5];

  void add() {
    int last = Num.last;
    Num.add(last + 1);
    notifyListeners();
  }

  void minus() {
    int last = Num.last;
    Num.remove(last);
    notifyListeners();
  }
}
