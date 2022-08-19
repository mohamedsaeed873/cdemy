
import 'package:cdemy/const_colors.dart';
import 'package:cdemy/controllers/auth_controller.dart';
import 'package:cdemy/controllers/search.dart';
import 'package:cdemy/controllers/settings_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widget/settings/dark_mode_widget.dart';
import '../../widget/settings/language.dart';
import '../../widget/side_menu.dart';
import '../splash_screen/welcome_screen.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {

  final authcontroller = Get.put(AuthController());
   final controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.black: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                icon: const Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.green,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            );
          },
        ),
        title: Text(
          'Settings'.tr,
          style: TextStyle(
              fontSize: 25, color: primary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                color: primary,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.greenAccent),
            accountName: Text(
              "Marwa Mostafa",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            accountEmail: Text(
              "mmmmmmmmmm@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/cedemy_icon.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LanguageWidget(),
          const SizedBox(
            height: 20,
          ),
          DarkModeWidget(),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: Text(
              'Personal_Settings'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Changing_personal_settings'.tr,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.lock_open,
            ),
            title: Text(
              'Your_Password'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Change_your_password'.tr,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_rounded,
            ),
            title: Text(
              'Log_out'.tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Check_out'.tr,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              authcontroller.preferences.clear();
              Get.toNamed('/welcomeScreen');
               authcontroller.logout();
              Get.to(const WelcomeScreen());
            },
          ),
        ],
      ),
    );
  }
}
/*
SwitchListTile(
            title: Text(
              'ChangeLanguage',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            value: _v,
            onChanged: (value) => setState(() {
              _v = value;
            }),
            secondary: const Icon(Icons.language),
          ),
 */
