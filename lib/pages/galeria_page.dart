import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_1/controllers/galeria_controller.dart';

class GaleriaPage extends StatelessWidget {
  GaleriaPage({Key? key}) : super(key: key);

  final galeriaController = Get.find<GaleriaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Galería page")
      ),
      body: Center(
        child: GetBuilder<GaleriaController>(
          builder: (galeriaController) => Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: NetworkImage(galeriaController.imageList[galeriaController.i]),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<GaleriaController>(
          builder: (galeriaController) => Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 150),
              FloatingActionButton(
                onPressed: () => galeriaController.prevImage(),
                child: const Icon(Icons.arrow_back),
                backgroundColor: Colors.purple,
              ),
              const SizedBox(width: 120),
              FloatingActionButton(
                onPressed: () => galeriaController.nextImage(),
                child: const Icon(Icons.arrow_forward),
                backgroundColor: Colors.purple,
              )
            ],
          )
        )
    );
  }
}