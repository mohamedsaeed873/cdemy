
import 'package:cdemy/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.put(MainControllers());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          backgroundColor: context.theme.backgroundColor,
          bottomNavigationBar: SizedBox(
            height: 70.h,
            child: BottomNavigationBar(
              selectedItemColor: Colors.green,
               // selectedLabelStyle: TextStyle(color: Colors.green),
               // unselectedLabelStyle: TextStyle(color: Colors.grey),
              backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items:  [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  label: 'Home'.tr,
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.category,
                    color: Colors.green,
                  ),
                  icon: Icon(
                    Icons.category,
                    color: Colors.grey,
                  ),
                  label: 'Categories'.tr,
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.calculate,
                    color: Colors.green,
                  ),
                  icon: Icon(
                    Icons.book_online,
                    color: Colors.grey,
                  ),
                  label: 'Courses'.tr,
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                  icon: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  label: 'Settings'.tr,
                ),
              ],
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ),
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs,
          ),
        );
      }),
    );
  }
}
