import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {
  // String for changing the Store Name
  final storeName = 'Thick Shake'.obs;
// int for increasing the Follower count
  final followerCount = 0.obs;
// bool for showing the status of the Store open or close
  final storeStatus = true.obs;
// List for names of Store Followers
  final followerList = [].obs;
// Map for Names and their Reviews for the Store
  final reviews = <Map>[].obs;
// text editing controllers
  final storeNameEditingController = TextEditingController();
  final reviewEditingController = TextEditingController();
  final followerController = TextEditingController();
  final reviewNameController = TextEditingController();

  updateStoreName(String name) {
    storeName(name);
  }

  incrementFollowerCount() {
    followerCount(followerCount.value + 1);
  }

  decrementFollowerCount() {
    followerCount(followerCount.value - 1);
  }

  addNewFollower(String name) {
    followerList.add(name);
  }

  deleteFollower(String name) {
    followerList.remove(name);
  }

  void storeStatusOpen(bool isOpen) {
    storeStatus(isOpen);
  }
}
