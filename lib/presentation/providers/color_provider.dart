import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier{
  int selectedColor = 0;
  void changeColor(){
    if(selectedColor == 0){
      selectedColor = 1;
    }else{
      selectedColor = 0;
    }
    notifyListeners();
  }
}

