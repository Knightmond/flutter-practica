import 'package:flutter/material.dart';
import 'package:prueba_1/widgets/card_widget.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardWidget(
          imageUrl: "https://store-images.s-microsoft.com/image/apps.54771.63131787694667297.e786edde-5064-499d-9660-f3d7c293ceaa.fc6bab12-c6bc-451d-b5f9-5e128e481294?mode=scale&q=90&h=1080&w=1920",
          titulo: "Eiei",
          descripcion:"¿Darkest Dungeon? sufrir, lo mejor",
        ),
      ),
    );
  }
}