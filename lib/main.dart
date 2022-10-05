import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/timer_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TimerController());
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const HomePage());
  }
}

// Home Page
class HomePage extends GetView<TimerController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 100,
        width: 200,
        decoration: const ShapeDecoration(
            color: Colors.orange,
            shape: StadiumBorder(
                side: BorderSide(width: 2, color: Colors.orange))),
        child: Obx(() => Center(
              child: Text(
                controller.time.value,
                // '${controller.time.value}',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    ));
  }
}
