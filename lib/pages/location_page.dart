import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/controllers/location_controller.dart';

class LocationPage extends GetView<LocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Text(
                    'User Location',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        decoration: TextDecoration.underline),
                  ),
                  Obx(() => Text(
                        'Latitude : ${controller.latitude.value}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                  Obx(() => Text(
                        'Longitude : ${controller.longitude.value}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                  Obx(
                    () => Text(
                      'Address : ${controller.address.value}',
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
