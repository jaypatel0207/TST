import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import "package:get/get.dart";

class FavouriteController extends GetxController {
  RxList<String> fruitList = ["Oranage", "Apple", "Mangoes", "Banana"].obs;
  RxList<dynamic> tempFruitsList = [].obs;

  addToFavourite(String value) {
    tempFruitsList.add(value);
  }

  removeFromFavourite(String value) {
    tempFruitsList.add(value);
  }
}
