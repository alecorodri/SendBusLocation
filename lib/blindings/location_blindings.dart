import 'package:get/get.dart';

import 'package:sendbuslocation_app/controllers/location_controller.dart';

class LocationBring extends Bindings {
  @override
  void dependencies() {
    Get.put<LocationController>(
      LocationController(),
    );
  }
}
