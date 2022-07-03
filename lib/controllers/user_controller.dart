import 'package:get/get.dart';
import '../models/user.dart';

class UserController extends GetxController {
  var userExist = false.obs;
  var user = User().obs;

  void loadUser(User user) {
    this.user.value = user;
    userExist.value = true;
  }

  void changeAge(int age) {
    user.update((val) {
      val!.age = age;
    });
  }
}
