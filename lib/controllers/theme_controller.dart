import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isActive = false.obs;

  void changeTheme() {
    isActive.value = !isActive.value;
  }
}
