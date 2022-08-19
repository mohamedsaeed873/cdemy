

import 'package:cdemy/core/constant/route.dart';
import 'package:cdemy/core/localizthon/changelocal.dart';
import 'package:cdemy/view/widget/custombouttonLanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalControler> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '1'.tr,
          style: Theme.of(context).textTheme.headline1,
        ),
        CustomLanguage(
          name: "AR",
          onPressed: () {
            controller.changeLang('ar');
            Get.toNamed(AppRpute.onboarding);
          },
        ),
        CustomLanguage(
          name: "EN",
          onPressed: () {
            controller.changeLang('en');
            Get.toNamed(AppRpute.onboarding);
          },
        ),
      ]),
    ));
  }
}
