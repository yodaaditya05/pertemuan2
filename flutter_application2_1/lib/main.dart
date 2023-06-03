import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final mycontroller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LATIHAN GETX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              print("BUILD WIDGET TEXT");
              return Text(
                "${mycontroller.data.value}",
                style: TextStyle(fontSize: 60),
              );
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    mycontroller.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    mycontroller.increment();
                  },
                  child: Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs;

  increment() {
    data = data + 1;
  }

  decrement() {
    data = data - 1;
  }
}
