import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/controllers/user_controller.dart';

import '../models/user.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              // ignore: sort_child_properties_last
              child: const Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userCtrl.loadUser(
                    User(name: 'Aleco', date: DateTime.now().toString()));
              }),
          MaterialButton(
              // ignore: sort_child_properties_last
              child: const Text('Añadir Profesion',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {}),
        ],
      )),
    );
  }
}
