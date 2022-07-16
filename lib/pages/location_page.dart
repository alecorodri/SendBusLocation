import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendbuslocation_app/controllers/location_controller.dart';

class LocationPage extends GetView<LocationController> {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.orange,
                size: 40,
              ),
              const Text(
                'User Location',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    decoration: TextDecoration.underline),
              ),
              Obx(() => Text(
                    'Latitude : ${controller.latitude.value}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  )),
              Obx(() => Text(
                    'Longitude : ${controller.longitude.value}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  )),
              Obx(
                () => Text(
                  'Address : ${controller.address.value}',
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              Obx(
                () => Text(
                  'Speed : ${controller.speed.value}',
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              Obx(
                () => Text(
                  'status : ${controller.isactive.value}',
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              Obx(
                () => Text(
                  'status : ${controller.speed.value}',
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
