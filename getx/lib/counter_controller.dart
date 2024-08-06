import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  increamentCount() {
    counter.value++ ;
    print(counter.value);
  }
}
