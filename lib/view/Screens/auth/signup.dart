import 'package:cdemy/controllers/auth_controller.dart';
import 'package:cdemy/controllers/valid.dart';
import 'package:cdemy/utils/my_string.dart';
import 'package:cdemy/view/Screens/auth/logint.dart';
import 'package:cdemy/view/widget/makeInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class SignupPage extends StatelessWidget {

  TextEditingController textEditingFirstNamecontrollerSignUp = TextEditingController();
  TextEditingController textEditingLastNamecontrollerSignUp = TextEditingController();
  TextEditingController textEditingEmailcontrollerSignUp = TextEditingController();
  TextEditingController textEditingPasswordcontrollerSignUp = TextEditingController();

  GlobalKey<FormState> form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    final validcontroller = Get.put(ValidInput());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          // height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up".tr,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:
                            Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account,It's free".tr,
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                ],
              ),
              Form(
                key: form,
                child: Column(
                  children: <Widget>[
                    Obx(() => makeInput(
                      controller:
                      controller.textEditingFirstNamecontrollerSignUp,
                      label: controller.name.value,
                      validator: (value) {
                        if (value.toString().length <= 2 ||
                            !RegExp(validationName).hasMatch(value!)) {
                          return 'Enter valid name';
                        } else {
                          return null;
                        }
                      },
                      onchange: (value) {
                        controller.firstNameSignUp.value = value;
                      },
                      obscureText: false,
                    )),
                    Obx(() => makeInput(
                      validator: (value) {
                        if (value.toString().length <= 2 ||
                            !RegExp(validationName).hasMatch(value!)) {
                          return 'Enter valid name';
                        } else {
                          return null;
                        }
                      },
                      controller:
                      controller.textEditingLastNamecontrollerSignUp,
                      label: controller.lname.value,
                      onchange: (value) {
                        controller.lastNameSignUp.value = value;
                      },
                      obscureText: false,
                    )),
                    Obx(() => makeInput(
                      validator: (value) {
                        if (!RegExp(validationEmail).hasMatch(value!)) {
                          return 'Invalid email';
                        } else {
                          return null;
                        }
                      },
                      controller: controller.textEditingEmailcontrollerSignUp,
                      label: controller.email.value,
                      obscureText: false,
                      onchange: (value) {
                        controller.emailSignUp.value = value;
                      },
                    )),
                    Obx(() => makeInput(
                      validator: (value) {
                        controller.passwordSignUp.value = value!;
                        if (controller.passwordSignUp.value.trim().length < 6) {
                          print(
                              'Password should be longer or equal to 6 characters');
                          return 'Password should be longer or equal to 6 characters';
                        } else {
                          return null;
                        }
                      },
                      controller:
                      controller.textEditingPasswordcontrollerSignUp,
                      label: controller.password.value,
                      obscureText: true,
                      onchange: (value) {
                        controller.passwordSignUp.value = value;
                        if (controller.passwordSignUp.value.trim().length < 6) {
                          print(
                              'Password should be longer or equal to 6 characters');
                          return 'Password should be longer or equal to 6 characters';
                        } else {
                          return null;
                        }
                      },
                    )),
                    Text(
                      "By_creating_an_account,_you_agree_to".tr,
                      style: TextStyle(
                          color: Get.isDarkMode
                              ? Colors.white
                              : Color(0xFF030338)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Terms of Application".tr,
                        style: TextStyle(
                            color: Get.isDarkMode
                                ? Colors.white
                                : Color(0xFF030338)),
                      ),
                    )
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
                    onPressed: () async {
                      if (form.currentState!.validate()) {
                        await controller.register(context);
                        controller.textEditingPasswordcontrollerSignUp.clear();
                        controller.textEditingFirstNamecontrollerSignUp.clear();
                        controller.textEditingLastNamecontrollerSignUp.clear();
                        controller.textEditingEmailcontrollerSignUp.clear();
                      }
                    },
                    color: Colors.greenAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Sign up".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Get.isDarkMode
                              ? Colors.white
                              : Color(0xFF030338)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already_have_an_account?".tr,
                    style: TextStyle(
                        color:
                            Get.isDarkMode ? Colors.white : Color(0xFF030338)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Login".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Get.isDarkMode
                              ? Colors.white
                              : Color(0xFF030338)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
