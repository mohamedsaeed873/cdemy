import 'package:cdemy/const_colors.dart';
import 'package:cdemy/controllers/settings_controller.dart';
import 'package:cdemy/utils/my_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class LanguageWidget extends StatelessWidget {
  LanguageWidget({Key? key}) : super(key: key);

  final controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                   margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: languageSettings,
                    ),
                    child: const Icon(
                      Icons.language,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Change_Language".tr,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10 , left: 5),
            child: Container(
              width: 120,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  width: 2,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 25,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        english,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      value: ene,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        arabic,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      value: ara,
                    ),
                    DropdownMenuItem(
                      child: Text(
                        france,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      value: frf,
                    ),
                  ],
                  value: controller.langLocal,
                  onChanged: (value) {
                    controller.changeLanguage(value!);
                    Get.updateLocale(Locale(value));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
 Text(
            ' text: "Change Language".tr,',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
 */