import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_store/bindings/store_bindings.dart';
import 'package:getx_store/constants/app_theme.dart';
import 'package:getx_store/views/add_followers_count.dart';
import 'package:getx_store/views/add_new_followers.dart';
import 'package:getx_store/views/home.dart';
import 'package:getx_store/views/store_status.dart';
import 'package:getx_store/views/update_storename.dart';
import 'package:getx_store/controllers/theme_controller.dart';

Future<void> main() async {
  await GetStorage.init();
  // await Get.putAsync(() => StorageService().init());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Store',
      initialBinding: StoreBindings(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/update-store-name", page: () => UpdateStoreName()),
        GetPage(
            name: "/update-follower-count", page: () => AddFollowersCount()),
        GetPage(name: "/store-status", page: () => StoreStatus()),
        GetPage(name: "/add-follower", page: () => AddNewFollowers()),
      ],
      home: Home(),
    );
  }
}
