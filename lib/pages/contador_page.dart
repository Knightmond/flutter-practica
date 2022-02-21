import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_1/controllers/contador_controller.dart';
class ContadorPage extends StatelessWidget {
  ContadorPage({Key? key}) : super(key: key);

  final contadorController = Get.find<ContadorController>();  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Contador"),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Número de clics dados:",
              style: TextStyle(fontSize: 18.0),
            ),
            GetBuilder<ContadorController>(
              builder: (contadorController) => Text(
                contadorController.valor.toString(),
                style: const TextStyle(fontSize: 18),
              )
            )
          ],
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () => contadorController.incrementar(),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () => contadorController.decrementar(),
              child: const Icon(Icons.remove)
            ),
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () => contadorController.reiniciar(),
              child: const Icon(Icons.refresh)
            )
          ],
        ),
    );
  }
}