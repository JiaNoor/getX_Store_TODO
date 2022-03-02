import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_store/controllers/store_controller.dart';
import 'package:getx_store/widgets/input_style.dart';

class AddNewFollowers extends StatelessWidget {
  const AddNewFollowers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final storeController = Get.find<StoreController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Add Follower"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height * 0.2,
            child: const Text(
              "Enter New Follower",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          InputStyle(
            hintText: "Follower Name",
            controller: storeController.followerController,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          ElevatedButton(
              onPressed: () {
                storeController
                    .addNewFollower(storeController.followerController.text);
                storeController.incrementFollowerCount();
                Get.snackbar(
                    'Added',
                    'New Follower Added\n '
                        '${storeController.followerController.text}',
                    snackPosition: SnackPosition.BOTTOM);
                storeController.followerController.clear();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Add"),
              )),
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: storeController.followerList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(storeController.followerList[index]),
                  trailing: IconButton(
                    onPressed: () {
                      storeController
                          .deleteFollower(storeController.followerList[index]);
                      storeController.decrementFollowerCount();
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
