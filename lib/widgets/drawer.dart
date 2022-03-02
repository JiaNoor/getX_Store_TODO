import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_store/constants/colors.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              'GetX Store',
              textAlign: TextAlign.center,
              style: TextStyle(
                color:
                    Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.change_circle_sharp,
                color:
                    Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              ),
              title: Text(
                "Change Store Name",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Get.isDarkMode
                      ? AppColors.spaceCadet
                      : AppColors.spaceBlue,
                ),
              ),
              onTap: () {
                // closes the drawer and goes to another screen
                Get.offAndToNamed('/update-store-name');
                //Get.back();
              }),
          ListTile(
            leading: Icon(
              Icons.add_reaction_sharp,
              color:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
            ),
            title: Text(
              "Add Followers",
              style: TextStyle(
                fontSize: 18.0,
                color:
                    Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/add-follower'),
          ),
          ListTile(
            leading: Icon(
              Icons.add_task_sharp,
              color:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
            ),
            title: Text(
              "Increment Followers",
              style: TextStyle(
                fontSize: 18.0,
                color:
                    Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/update-follower-count'),
          ),
          ListTile(
            leading: Icon(
              Icons.toggle_on_sharp,
              color:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
            ),
            title: Text(
              "Toggle Store Status",
              style: TextStyle(
                fontSize: 18.0,
                color:
                    Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/store-status'),
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.add_comment_sharp,
          //     color:
          //         Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
          //   ),
          //   title: Text(
          //     "Add Reviews",
          //     style: TextStyle(
          //       fontSize: 18.0,
          //       color:
          //           Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
          //     ),
          //   ),
          //   onTap: () => Get.offAndToNamed('/add_reviews'),
          // ),
          /*ListTile(
            leading: Icon(
              Icons.update_sharp,
              color:
                  Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
            ),
            title: Text(
              "Update Menu",
              style: TextStyle(
                fontSize: 18.0,
                color:
                    Get.isDarkMode ? AppColors.spaceCadet : AppColors.spaceBlue,
              ),
            ),
            onTap: () => Get.offAndToNamed('/update_menu'),
          ),*/
        ],
      ),
    );
  }
}
