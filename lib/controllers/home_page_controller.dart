import 'package:get/get.dart';
import 'package:sendbuslocation_app/controllers/location_controller.dart';

class HomePageController extends GetxController {
  final ctrl = Get.put(LocationController());
  var tabIndex = 0.obs;
  var isActive = false.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  void changeActive(bool value) {
    value = !value;
    ctrl.isactive.value = value;
    ctrl.getLocation();
    update();
  }
}
