import 'dart:convert';
import 'package:cdemy/core/constant/const_linke.dart';
import 'package:cdemy/models/login_model.dart';
import 'package:cdemy/models/register_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AuthServices {
  final Dio _dio = Dio();
  RegisterModel? registerModel;
  LoginModel? loginModel;

  register(String first_name, String last_name, String email,
      String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      var response = await _dio.post(linkSingUp, data: {
        'first_name': first_name,
        'last_name': last_name,
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        Get.toNamed('/mainScreen');
        registerModel = RegisterModel.fromJson(response.data);
        prefs.setString('token', "");
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  login(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      var response = await _dio
          .post(linkLogin, data: {"email": email, "password": password});
      if (response.statusCode == 200) {
        loginModel = LoginModel.fromJson(response.data);
        prefs.setString('token', loginModel!.data!.token!);
        String user = jsonEncode(LoginModel.fromJson(response.data));
        prefs.setString('user', user);
        Get.toNamed('/mainScreen');
        return loginModel;
      }
    } catch (e) {
      print(e);
    }
  }
}

/*

   Future<LoginModel?> login
    (String email, String password) async {
   try{
   var response = await _dio.post('$baseUrl/auth/authenticate',
     data: {
     'email' : email,
       'password': password,
       'device_token':
       "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjU2NzU3NDI5LCJ0dGwiOjIwMDAsInR5cGUiOiJhdXRoIiwia2V5IjoiZjUwYmYyYmQtMjhjYy00OTAxLWEzMDItZjM5OTc5MGMwM2NmIiwicHJvamVjdCI6ImNkZW15In0.KU24MB35hFcfpJZKSrUAS5DxeBRnGRkZPY5lVugQ1m0"
     });
   if (response.statusCode == 200) {
     print(response.data);
   }
   } catch (e) {
     print(e);
   }
   return null;
}


   deleteData() async {
      await _dio.delete(baseUrl
         ).then((response){
      print('Response status : ${response.statusCode}');
    });
  }
}*/
