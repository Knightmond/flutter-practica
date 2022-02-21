import 'package:get/get.dart';

class ContadorController extends GetxController {
  int valor = 0;

  void incrementar() {
    valor++;
    update();
  }

  void decrementar() {
    if (valor > 0) {
      valor--;
      update();
    }
  }

  void reiniciar() {
    valor = 0;
    update();
  }
}
