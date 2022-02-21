import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FiguraController extends GetxController {
  Color color1 = Colors.amber;
  Color color2 = Colors.teal;
  Icon icono = Icons.stop as Icon;
  double figRadius = 90;

  void switchColor(){
    update();
    if (color1 == Colors.amber) {
      color1 = Colors.teal;
      update();
    } else {
      color1 = Colors.amber;
      update();
    }
  }

  void switchFigShape(){
    update();
    if (figRadius == 90){
      figRadius = 20;
      update();
    } else {
      figRadius = 90;
      update();
    }
  }

  void switchBtnColor(){
    update();
    if (color1 == Colors.teal) {
      color1 = Colors.amber;
      update();
    } else {
      color1 = Colors.teal;
      update();
    }
  }

  void switchBtnIcon(){
    update();
    if(icono.icon == Icons.stop){
      icono = Icons.circle as Icon;
      update();
    } else {
      icono = Icons.stop as Icon;
      update();
    }
  }
}