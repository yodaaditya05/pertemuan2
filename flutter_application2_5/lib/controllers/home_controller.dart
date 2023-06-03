import 'package:get/get.dart';

class HomeController extends GetxController {
  int dataPantau = 0;

  void tambahData() {
    dataPantau = dataPantau + 1;
    if (dataPantau % 5 == 0) {
      update();
    }
  }

  void refreshTampilan() {
    update();
  }
}
