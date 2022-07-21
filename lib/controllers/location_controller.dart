import 'dart:async';

// import 'package:geocoding/geocoding.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  var latitude = 'Getting Latitude..'.obs;
  var longitude = 'Getting Longitude..'.obs;
  // var address = 'Getting Address..'.obs;
  var speed = 'Getting Speed..'.obs;
  var pos = ''.obs;
  var isactive = false.obs;
  late StreamSubscription<Position> streamSubscription;

  // void backgroundFetchHeadlessTask(HeadlessTask task) async {
  //   String taskId = task.taskId;
  //   bool isTimeout = task.timeout;
  //   if (isTimeout) {
  //     // This task has exceeded its allowed running-time.  You must stop what you're doing and immediately .finish(taskId)
  //     print("[BackgroundFetch] Headless task timed-out: $taskId");
  //     BackgroundFetch.finish(taskId);
  //     return;
  //   }
  //   print("[BackgroundFetch] Headless event received: $taskId");
  //   BackgroundFetch.finish(taskId);
  // }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    streamSubscription.cancel();
  }

  getLocation() async {
    bool serviceEnabled;
    bool isactive = this.isactive.value;

    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    if (permission == LocationPermission.whileInUse && isactive == true) {
      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      streamSubscription =
          Geolocator.getPositionStream().listen((Position position) {
        latitude.value = 'Latitude : ${position.latitude}';
        longitude.value = 'Longitude : ${position.longitude}';
        speed.value = 'Speed : ${position.speed}';

        // getAddressFromLatLang(position);
      });
      Get.snackbar('Messege',
          'Latitude : ${latitude.value},  ${longitude.value}, ${speed.value},');
    } else if (!isactive) {
      streamSubscription.cancel();
    }
  }

  // Future<void> getAddressFromLatLang(Position position) async {
  //   List<Placemark> placemark =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   Placemark place = placemark[0];
  //   address.value =
  //       'Address : ${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
  // }
}
