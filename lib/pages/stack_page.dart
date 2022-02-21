import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack page"),
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.menu),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.pink,
            child: Text("CE"),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.network(
            "https://i.gifer.com/3Q3R.gif",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned(
            right: 20,
            bottom: 10,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            )
          )
        ],
      ),
    );
  }
}
