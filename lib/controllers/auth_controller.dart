import 'package:cdemy/controllers/base_controller.dart';
import 'package:cdemy/core/services/auth_service.dart';
import 'package:cdemy/models/register_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/login_model.dart';


class AuthController extends BaseController {
  final _authServices = AuthServices();
  final Dio _dio = Dio();

  TextEditingController textEditingFirstNamecontrollerSignUp = TextEditingController();
  TextEditingController textEditingLastNamecontrollerSignUp = TextEditingController();
  TextEditingController textEditingEmailcontrollerSignUp = TextEditingController();
  TextEditingController textEditingPasswordcontrollerSignUp = TextEditingController();
  TextEditingController textEditingEmailcontrollerLogin = TextEditingController();
  TextEditingController textEditingPasswordcontrollerLogin = TextEditingController();

  final name = 'First Name'.obs;
  final lname = 'Last Name'.obs;
  final email = 'Email'.obs;
  final password = 'Password'.obs;

  final firstNameSignUp = ''.obs;
  final lastNameSignUp = ''.obs;
  final emailSignUp = ''.obs;
  final passwordSignUp = ''.obs;

  final emailLogin = ''.obs;
  final passwordLogin = "".obs;

  late final SharedPreferences preferences;

  register(BuildContext context) async {
    try {
      if (firstNameSignUp.value.isNotEmpty &&
          lastNameSignUp.value.isNotEmpty &&
          emailSignUp.value.isNotEmpty &&
          passwordSignUp.value.isNotEmpty) {
        RegisterModel? registerModel = await _authServices.register(
            firstNameSignUp.value,
            lastNameSignUp.value,
            emailSignUp.value,
            passwordSignUp.value);
        Navigator.pushNamedAndRemoveUntil(
            context, "/viewScreen", (route) => false);
      } else {
        print('mmmmmmmm');
      }
    } catch (e) {
      print(e);
    }
  }

 login(BuildContext context) async {
    try {
      if (passwordLogin.isNotEmpty && emailLogin.isNotEmpty) {
        LoginModel? loginModel =
            await _authServices.login(emailLogin.value, passwordLogin.value);
       // Get.to(MainScreen());
      } else {
     Get.dialog(Container(
       child: Text('medo'),
     ));
      }
    } catch (e) {
      print(e);
    }
  }

  logout()async{
    try{
        await logout();
    }catch(e){
      print(e);
    }
  }
/*
 login() async {
    LoginModel? loginModel =
    await _authServices.login(emailLogin.value, passwordLogin.value);
  }

  Future<LoginModel?> login(BuildContext context) async {
    try {
      var response = await _dio.post(linkLogin, data: {
        'email': email,
        'password': password,
        'device_token':
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjU2NzU3NDI5LCJ0dGwiOjIwMDAsInR5cGUiOiJhdXRoIiwia2V5IjoiZjUwYmYyYmQtMjhjYy00OTAxLWEzMDItZjM5OTc5MGMwM2NmIiwicHJvamVjdCI6ImNkZW15In0.KU24MB35hFcfpJZKSrUAS5DxeBRnGRkZPY5lVugQ1m0"
      });
      if (response.statusCode == 200) {
        preferences.setString("id",'id'.toString());
        preferences.setString("email", "$email");
        preferences.setString("password", "$password");

        Get.toNamed('/mainScreen');
      } else {
        Get.defaultDialog(
            title: "Attention",
            titleStyle: TextStyle(fontSize: 25, color: Colors.black),
            middleText: 'Incorrect email or password',
            cancel: MaterialButton(
              onPressed: () {},
              child: Text('Cancel'),
            ));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
  */
}


