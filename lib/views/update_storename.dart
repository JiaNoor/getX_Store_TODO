import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_store/controllers/store_controller.dart';
import 'package:getx_store/widgets/input_style.dart';

class UpdateStoreName extends StatelessWidget {
  const UpdateStoreName({Key? key}) : super(key: key);

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
        title: const Text("Update Store Name"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height * 0.2,
            child: const Text(
              "Enter Store Name",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          InputStyle(
            hintText: "Store Name",
            controller: storeController.storeNameEditingController,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          ElevatedButton(
              onPressed: () {
                storeController.updateStoreName(
                    storeController.storeNameEditingController.text);
                Get.snackbar(
                    'Updated',
                    'Store name has been updated to '
                        '${storeController.storeNameEditingController.text}',
                    snackPosition: SnackPosition.BOTTOM);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Update"),
              ))
        ],
      ),
    );
  }
}
