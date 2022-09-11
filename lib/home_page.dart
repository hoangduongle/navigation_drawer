// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:naviga_drawer/drawer_controller.dart';
import 'package:naviga_drawer/navigation_drawer.dart';
import 'package:naviga_drawer/nexxt_page.dart';
import 'package:naviga_drawer/service_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    DrawerControllers controllers = Get.find();
    return Scaffold(
      // key: controllers.scaffoldKey,
      drawer: NavigationDrawer(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                child: Text("Name"),
              ),
              Container(
                child: RawKeyboardListener(
                    onKey: (value) {
                      if (value.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        controllers.scaffoldKey.currentState.printError();
                      }
                    },
                    focusNode: FocusNode(),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          print("Tap tap");
                        },
                        child: Text("AA"),
                      ),
                    )),
              ),
              Container(
                child: InkWell(
                  autofocus: true,
                  onTap: () {},
                  child: Text("BB"),
                ),
              ),
              Container(
                child: InkWell(
                  autofocus: true,
                  onTap: () {},
                  child: Text("CC"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildNaviga(int index) {
  switch (index) {
    case 1:
      return NextPage();
    case 2:
      return ServicePage();
    default:
      return NextPage();
  }
}
