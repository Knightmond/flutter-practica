import 'package:prueba_1/controllers/contador_controller.dart';
import 'package:prueba_1/controllers/figura_controller.dart';
import 'package:prueba_1/controllers/galeria_controller.dart';
import 'package:prueba_1/controllers/menu_controller.dart';
import "package:prueba_1/pages/card_page.dart";
import "package:prueba_1/pages/contador_page.dart";
import "package:prueba_1/pages/container_page.dart";
import 'package:prueba_1/pages/figura-page.dart';
import 'package:prueba_1/pages/form_page.dart';
import 'package:prueba_1/pages/galeria_page.dart';
import 'package:prueba_1/pages/list_view_page.dart';
import 'package:prueba_1/pages/menu_controller_pages.dart';
import "package:prueba_1/pages/menu_page.dart";
import 'package:flutter/material.dart';
import 'package:prueba_1/pages/stack_page.dart';
import 'package:get/get.dart';

void main() { 
  Get.lazyPut(() => ContadorController());
  Get.lazyPut(() => MenuController());
  Get.lazyPut(() => FiguraController());
  Get.lazyPut(() => GaleriaController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prueba",
      initialRoute: "/menu",
      routes: {
        "/menu": (context) => const MenuPage(),
        "/contador": (context) => ContadorPage(),
        "/container": (context) => const ContainerPage(),
        "/card": (context) => const CardPage(),
        "/stack": (context) => const StackPage(),
        "/listview": (context) => const ListViewPage(),
        "/form": (context) => const FormPage(),
        "/menu-controller": (context) => const MenuControllerPages(),
        "/figura": (context) => const FiguraPage(),
        "/galeria": (context) => GaleriaPage()
      },
    );
  }
}