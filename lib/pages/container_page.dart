import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Sección de container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage("https://dam.esquirelat.com/wp-content/uploads/2020/07/STANLEE.jpg"),
                  fit: BoxFit.cover
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.amber, blurRadius: 15.0)
                ],
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage("url"),
                  fit: BoxFit.cover
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 15.0)
                ],
                color: Colors.grey,
                borderRadius: BorderRadius.circular(90)
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage("url"),
                  fit: BoxFit.cover
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.red, blurRadius: 15.0)
                ],
                color: Colors.red,
                borderRadius: BorderRadius.circular(45)
              )
            )
          ],
        ),
      )
    );
  }
}