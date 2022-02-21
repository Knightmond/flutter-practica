import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_1/controllers/menu_controller.dart';
import 'package:prueba_1/pages/card_page.dart';
import 'package:prueba_1/pages/contador_page.dart';

class MenuControllerPages extends StatelessWidget {
  const MenuControllerPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu controller")),
      body: GetBuilder<MenuController>(
        builder: (menuController) {
          if (menuController.index == 0) {
            return ContadorPage();
          } else if (menuController.index == 1) {
            return const CardPage();
          } else {
            return Container();
          }
        },
      ),
      bottomNavigationBar: GetBuilder<MenuController>(
        builder: (menuController) {
          return BottomNavigationBar(
            onTap: (index) {
              menuController.indexPage(index);
            },
            currentIndex: menuController.index,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_forward),
                label: "contador" 
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_forward),
                label: "cartas"
              )
            ],
          );
        },
      ),
    );
  }
}
