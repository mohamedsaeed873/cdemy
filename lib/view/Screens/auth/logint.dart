
import 'package:cdemy/controllers/auth_controller.dart';
import 'package:cdemy/controllers/valid.dart';
import 'package:cdemy/utils/my_string.dart';
import 'package:cdemy/view/Screens/auth/signup.dart';
import 'package:cdemy/view/widget/makeInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class LoginPage extends StatelessWidget {

  TextEditingController textEditingEmailcontrollerLogin =  TextEditingController();

  TextEditingController textEditingPasswordcontrollerLogin = TextEditingController();

  GlobalKey<FormState> form = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(AuthController());

    final validcontroller = Get.put(ValidInput());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Form(
              key: form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login".tr,
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login to your account".tr,
                        style: TextStyle(fontSize: 15, color:Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        Obx(() => makeInput(
                          validator: (value) {
                            if (!RegExp(validationEmail).hasMatch(value!)) {
                              return 'Invalid email';
                            } else {
                              return null;
                            }
                          },
                              controller:
                                  controller.textEditingEmailcontrollerLogin,
                              label: controller.email.value,
                              onchange: (value) {
                                controller.emailLogin.value = value;
                              },
                              obscureText: false,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        Obx(() => makeInput(
                              validator: (value) {
                                return
                                  validcontroller.valid(value!, 8, 20);
                              },
                              controller:
                                  controller.textEditingPasswordcontrollerLogin,
                              label: controller.password.value,
                              obscureText: true,
                              onchange: (value) {
                                controller.passwordLogin.value = value;
                              },
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
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
                           controller.login(context);
                        },
                        color: Colors.greenAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Login".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18 , color: Get.isDarkMode
                              ? Colors.white : Color(0xFF030338)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0.w),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8.w,
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
                            minWidth: 70.w,
                            height: 60,
                            onPressed: () {},
                            color: Colors.greenAccent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                Text(
                                  "Login with ".tr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 18 ,
                                      color: Get.isDarkMode ? Colors.white
                                      : Color(0xFF030338)),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Image(image: AssetImage('assets/facebook.png')),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
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
                            minWidth: 80.w,
                            height: 60,
                            onPressed: () {},
                            color: Colors.greenAccent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                Text(
                                  "Login with ".tr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 18 , color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                                ),
                                Image(image: AssetImage('assets/google.png')),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?".tr , style: TextStyle(color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupPage(),
                              ));
                        },
                        child: Text(
                          "Sign up".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18 , color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
