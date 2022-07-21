import 'package:get/get.dart';
import 'package:sendbuslocation_app/controllers/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomePageController>(
      HomePageController(),
    );
  }
}
