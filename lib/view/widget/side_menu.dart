
import 'package:cdemy/controllers/profile_controller.dart';
import 'package:cdemy/view/Screens/account/account_screen.dart';
import 'package:cdemy/view/Screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Obx(() => controller.check.value==false?CircularProgressIndicator(): UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.greenAccent),
                accountName: Text(
                  "${controller.loginModel!.data!.user!.firstName ?? ''} " +
                      "${controller.loginModel!.data!.user!.lastName ?? ''}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                accountEmail: Text(
                  controller.loginModel!.data!.user!.email??'',
                  style: TextStyle(color: Colors.grey),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/cedemy_icon.png"),
                ),
              )),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: Text(
              'Home'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Courses,Programing,Design,Marketing'.tr,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              Get.to( HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: Text(
              'Settings'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Dark_Mode,Language'.tr,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              Get.to(SettingsScreen());
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
            ),
            title: Text(
              'Share'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
          AboutListTile(
            icon: const Icon(
              Icons.info,
            ),
            applicationIcon: const Icon(
              Icons.local_play,
            ),
            applicationName: 'CDEMY',
            applicationVersion: '1.0.0',
            applicationLegalese: '///',
            aboutBoxChildren: const [
              ///details...
            ],
            child: Text(
              'About_Us'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
