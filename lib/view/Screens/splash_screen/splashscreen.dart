
import 'package:cdemy/view/Screens/splash_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const WelcomeScreen(),
      title: Text(
        'CDEMY',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.sp,
            color: Colors.greenAccent),
      ),
      image: Image.asset(
          'assets/cdemy_icon_w.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: const TextStyle(color: Colors.white),
      photoSize: 100.0,
      // ignore: avoid_print
      onClick: () => print('medoApp'),
      loaderColor: Colors.greenAccent,
    );
  }
}
