import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_store/controllers/store_controller.dart';

class AddFollowersCount extends StatelessWidget {
  AddFollowersCount({Key? key}) : super(key: key);
  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    final storeController = Get.find<StoreController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Update Follower Count"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text(
                "${storeController.followerCount}",
                style: const TextStyle(fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25,
                  // backgroundColor: red,
                  child: IconButton(
                    onPressed: () {
                      storeController.decrementFollowerCount();
                      Get.snackbar('Decrement', 'Followers decremented By 1',
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    icon: const Icon(Icons.exposure_minus_1),
                    // color: black,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  // backgroundColor: red,
                  child: IconButton(
                    onPressed: () {
                      storeController.incrementFollowerCount();
                      Get.snackbar('Increment', 'Followers incremented By 1',
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    icon: const Icon(Icons.plus_one),
                    //color: black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
