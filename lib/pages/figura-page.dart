import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_1/controllers/figura_controller.dart';

class FiguraPage extends StatelessWidget {
  const FiguraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Figura page"),
      ),
      body: Center(
        child: GetBuilder<FiguraController>(
          builder: (figurasController) => Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(figurasController.figRadius),
              color: figurasController.color1
            ),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<FiguraController> (
        builder: (figurasController) => FloatingActionButton(
          child: Icon(
            Icons.change_circle,
            color: figurasController.color2,
          ),
          onPressed: () {
            figurasController.switchColor();
            figurasController.switchFigShape();
          }
        )
      ),
    );
  }
}