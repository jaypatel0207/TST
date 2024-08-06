import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/example_controller.dart';
import 'package:getx/example_two.dart';
import 'package:getx/favourite.dart';
import 'package:getx/image_picker_controller.dart';
import 'package:getx/screen2.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  //FavouriteController controller = Get.put(FavouriteController());
  // bool notification = false;
  //double opacity = 0.4;
  //int counter = 0;
  //final CounterController controller = Get.put(CounterController());
  //ExampleController exampleController = Get.put(ExampleController());
  // ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    // final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Demo',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: controller.imagePath.isNotEmpty
                        ? FileImage(File(controller.imagePath.toString()))
                        : null,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      controller.getImage();
                    },
                    child: Text("Pick Image"))
              ],
            ))

        // ListView.builder(
        //   itemCount: controller.fruitList.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {

        //           if (controller.tempFruitsList
        //               .contains(controller.fruitList[index].toString())) {
        //             // controller.tempFruitsList
        //             //     .remove(controller.fruitList[index].toString());

        //             controller.removeFromFavourite(
        //                 controller.fruitList[index].toString());
        //           } else {
        //             // controller.tempFruitsList
        //             //     .add(controller.fruitList[index].toString());

        //                  controller.addToFavourite(
        //                 controller.fruitList[index].toString());
        //           }
        //         },
        //         title: Text(controller.fruitList[index].toString()),
        //         trailing:

        //         Obx(()=> IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.favorite,
        //               color: controller.tempFruitsList
        //                       .contains(controller.fruitList[index].toString())
        //                   ? Colors.red
        //                   : Colors.white,
        //             )),)

        //       ),
        //     );
        //   },
        // )

        // Padding(
        //   padding: const EdgeInsets.all(12.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text("Notification"),
        //       Obx(() => Switch(
        //           value: exampleController.notification.value,
        //           onChanged: (Value) {
        //             exampleController.setNotification(Value);
        //           }))
        //     ],
        //   ),
        // )

        // Obx(() => Container(
        //       height: 200,
        //       width: 200,
        //       color:
        //           Colors.red.withOpacity(exampleTwoController.opacity.value),
        //     )),
        // Obx(() => Slider(
        //       value: exampleTwoController.opacity.value,
        //       onChanged: (value) {
        //         exampleTwoController.setOpacity(value);
        //         //print(value);
        //       },
        //     ))

        // Column(
        //   children: [
        //     Center(
        //       child: Text(
        //         x.toString(),
        //         style: TextStyle(fontSize: 60),
        //       ),
        //     ),
        //     // ElevatedButton(
        //     //     onPressed: () {
        //     //       x--;
        //     //       setState(() {

        //     //       });
        //     //     },
        //     //     child: Icon(Icons.exposure_minus_1))
        //   ],
        // ),

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     ListTile(
        //       title: Text("message".tr),
        //       subtitle: Text("Jay Patel".tr),
        //     )
        //   ],
        // )

        // Container(
        //   height: height*0.2,
        //   width: Get.width*0.2,
        //   //MediaQuery.of(context).size.height*0.3,
        //   color: Colors.red,
        //   child: Center(child: Text("Center")),
        // )
        );
  }
}
