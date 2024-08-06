import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ExampleController extends GetxController {
  RxBool notification = false.obs;
  setNotification(bool value) {
    notification.value = value;
  }
}
