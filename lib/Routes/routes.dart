
import 'package:cdemy/view/Screens/auth/logint.dart';
import 'package:cdemy/view/Screens/auth/signup.dart';
import 'package:cdemy/view/Screens/auth/view_screen.dart';
import 'package:cdemy/view/Screens/home/main_screen.dart';
import 'package:cdemy/view/Screens/splash_screen/splashscreen.dart';
import 'package:cdemy/view/Screens/splash_screen/welcome_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoute {
  static const splashScreens = Routes.Splash;

  static final routes = [
    GetPage(
      name: Routes.Splash,
      page: () => Splash(),
    ),
    GetPage(
      name: Routes.welcome,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.sign,
      page: () => SignupPage(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
    ),
    GetPage(
      name: Routes.viewScreen,
      page: () => ViewScreen(),
    ),
  ];
}

class Routes {
  static const Splash = '/splash';
  static const welcome = '/welcomeScreen';
  static const login = '/loginScreen';
  static const sign = '/signupScreen';
  static const mainScreen = '/mainScreen';
  static const viewScreen = '/viewScreen';

}
