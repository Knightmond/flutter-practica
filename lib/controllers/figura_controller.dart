import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FiguraController extends GetxController {
  Color color1 = Colors.teal;
  Color color2 = Colors.amber;
  double figRadius = 200;

  void switchColor(){
    update();
    if (color1 == Colors.teal) {
      color1 = Colors.amber;
      update();
    } else {
      color1 = Colors.teal;
      update();
    }
  }

  void switchFigShape(){
    update();
    if (figRadius == 200){
      figRadius = 20;
      update();
    } else {
      figRadius = 200;
      update();
    }
  }

  void switchBtnColor(){
    update();
    if (color1 == Colors.amber) {
      color1 = Colors.teal;
      update();
    } else {
      color1 = Colors.amber;
      update();
    }
  }
}