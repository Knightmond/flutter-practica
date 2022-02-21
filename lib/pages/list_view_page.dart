import 'package:flutter/material.dart';
import 'package:prueba_1/widgets/card_widget.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Sección de ListView"),
      ),
      body: ListView(
        children: [
          CardWidget(
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh32Vcb8-KYakjjQ7OxxcP1ySJzgiVBHgBdw&usqp=CAU", 
            descripcion: "Hola Martínez ¿Cómo le va?", 
            titulo: "Martínez"
          ),
          const SizedBox(height: 15),
          CardWidget(
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh32Vcb8-KYakjjQ7OxxcP1ySJzgiVBHgBdw&usqp=CAU", 
            descripcion: "¿kmv Ramírez? ¿kmv?", 
            titulo: "Ramírez"
          ),
          const SizedBox(height: 15),
          CardWidget(
            imageUrl: "https://i.pinimg.com/originals/5f/a0/6e/5fa06e7d9fdf561a6aecceef17a2aa69.jpg", 
            descripcion: "Genshin, lo peor", 
            titulo: "Eiei"
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}