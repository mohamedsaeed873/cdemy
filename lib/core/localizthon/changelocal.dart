
import 'package:cdemy/core/services/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocalControler extends GetxController {
  Locale? langugae;

  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPreclang = myServices.sharedPreferences.getString('lang');
    if (sharedPreclang == 'ar') {
      langugae = const Locale('ar');
    } else if (sharedPreclang == 'en') {
      langugae = const Locale('en');
    } else {
      langugae = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
