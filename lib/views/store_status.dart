import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_store/controllers/store_controller.dart';

class StoreStatus extends StatelessWidget {
  StoreStatus({Key? key}) : super(key: key);

  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Test Status Toggle")),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Is the Store open?",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 16),
              Obx(
                () => Switch(
                  onChanged: (value) => storeController.storeStatus(value),
                  activeColor: Colors.teal,
                  value: storeController.storeStatus.value,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
