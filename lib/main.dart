import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naviga_drawer/drawer_controller.dart';
import 'package:naviga_drawer/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DrawerControllers());
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
