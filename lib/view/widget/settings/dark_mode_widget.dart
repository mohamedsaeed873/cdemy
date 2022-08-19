import 'package:cdemy/const_colors.dart';
import 'package:cdemy/controllers/settings_controller.dart';
import 'package:cdemy/controllers/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class DarkModeWidget extends StatelessWidget {
  DarkModeWidget({Key? key}) : super(key: key);

  final controller = Get.find<SettingController>();


  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconWidget(),
          Switch(
            activeTrackColor: Get.isDarkMode ? pinkClr : mainColor,
            activeColor: Get.isDarkMode ? pinkClr : mainColor,
            value: controller.swithchValue.value,
            onChanged: (value) {
              ThemeController().changesTheme();
              controller.swithchValue.value = value;
            },
          ),
        ],
      ),
    );
  }

  Widget buildIconWidget() {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: darkSettings,
              ),
              child: const Icon(
                Icons.dark_mode,
                color: Colors.white,
                size: 18,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Dark_Mode".tr,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
