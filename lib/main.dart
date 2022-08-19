import 'package:cdemy/Routes/routes.dart';
import 'package:cdemy/core/localizthon/changelocal.dart';
import 'package:cdemy/core/localizthon/tranzlthon.dart';
import 'package:cdemy/core/services/service.dart';
import 'package:cdemy/utils/my_string.dart';
import 'package:cdemy/view/Screens/home/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/auth_controller.dart';
import 'controllers/theme_controller.dart';
import 'core/constant/colors.dart';
import 'view/Screens/auth/logint.dart';
import 'view/Screens/langouge.dart';


final controller = Get.put(AuthController());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  SharedPreferences? sharedPreferences = await SharedPreferences.getInstance();
  controller.preferences = await SharedPreferences.getInstance();
  var token = sharedPreferences.getString('token');
  var user = sharedPreferences.getString('user');

  runApp(const MyApp());
 // print(token);
 // print(user);
 /*runApp(ScreenUtilInit(
    designSize: const Size(375, 667),
    splitScreenMode: true,
    builder: (context, child) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: token==null ? "/loginScreen" :"?mainScreen",
      locale: Locale(GetStorage().read<String>('lang').toString()),
      translations: MyTranslations(),
      fallbackLocale: Locale(ene),
     // home: token != null ? MainScreen() : LoginPage(),
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      // initialRoute: AppRoute.splashScreens,
      getPages: AppRoute.routes,
    ),
  ));*/
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalControler controler = Get.put(LocalControler());
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: controller.preferences.getString("id")==null ? "/loginScreen" :"?mainScreen",
        locale:controler.langugae,
        translations: MyTranslations(),
        fallbackLocale: Locale(ene),
        home: Language(),
        theme: ThemesApp.light,
        darkTheme: ThemesApp.dark,
        themeMode: ThemeController().themeDataGet,
        // initialRoute: AppRoute.splashScreens,
        getPages: AppRoute.routes,
      ),
    );
  }
}
