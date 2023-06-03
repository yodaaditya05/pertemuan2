import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Obx(
            // () => Text(
            //"${homeC.dataPantau}",
            //style: TextStyle(
            //fontSize: 50,
            // ),
            // ),
            // ),
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                homeC.tambahData();
              },
              child: Text("Tambah Data"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                homeC.refreshTampilan();
              },
              child: Text("Refresh Tampilan"),
            ),
          ],
        ),
      ),
    );
  }
}
