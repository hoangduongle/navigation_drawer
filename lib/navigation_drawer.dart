import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:naviga_drawer/drawer_controller.dart';
import 'package:naviga_drawer/nexxt_page.dart';

class NavigationDrawer extends GetView<DrawerControllers> {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      child: Drawer(
        width: 240,
        elevation: 5,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                child: Wrap(
                  runSpacing: 16,
                  children: [
                    ListTile(
                      autofocus: true,
                      leading: const Icon(Icons.home_outlined),
                      title: const Text("Home"),
                      onTap: () {
                        // Get.back();
                        Get.to(() => NextPage());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onKey: (value) {
        if (value.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
          controller.closeDrawer();
        }
      },
    );
  }
}
