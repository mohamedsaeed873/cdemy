
import 'package:cdemy/view/Screens/auth/logint.dart';
import 'package:cdemy/view/Screens/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome".tr,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30.sp , color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "In order to be able to use the application and get the discount coupon, please register".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15.sp),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/welcom.png'))),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Login".tr,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Get.to(SignupPage());
                      },
                      color: Colors.yellow,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign_up".tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18 , color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
