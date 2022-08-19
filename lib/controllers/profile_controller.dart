import 'dart:convert';

import 'package:cdemy/models/login_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  final userMap = <String, dynamic>{}.obs;
  LoginModel? loginModel;
  final check=false.obs;

  Future<void>onInit() async{
    super.onInit();
   await getProfile();
  }

  getProfile() async {
    check.value=false;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userPref = prefs.getString('user');
    Map userMap = jsonDecode(userPref!);

    // userMap.value = jsonDecode(userPref!) as Map<String, dynamic>;
    // print(userMap);
    loginModel = LoginModel.fromJson(userMap);
    print(loginModel!.data!.user!.email);
    check.value=true;

  }
}
