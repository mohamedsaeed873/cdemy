
import 'package:cdemy/models/item-model.dart';
import 'package:cdemy/view/Screens/account/account_screen.dart';
import 'package:cdemy/view/Screens/categories/categories.dart';
import 'package:cdemy/view/Screens/courses/courses_screen.dart';
import 'package:cdemy/view/Screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class MainControllers extends BaseController{
  RxInt currentIndex = 0.obs;
  RxList selctedItems = <Item>[].obs;

  final dataListe =<Item> [
    Item( title: 'Programing', image: 'assets/cdemy_icon_w.png'),
    Item( title: 'Design', image: 'assets/cdemy_icon_w.png'),
    Item( title: 'marketing', image: 'assets/cdemy_icon_w.png'),
    Item( title: 'Networks', image: 'assets/cdemy_icon_w.png'),
    Item( title: 'Business Administration', image: 'assets/cdemy_icon_w.png'),
    Item( title: 'Accounting', image: 'assets/cdemy_icon_w.png'),
    Item( title: 'Economy', image: 'assets/cdemy_icon_w.png'),

  ].obs;

  var tabs = [
     HomeScreen(),
     CategoriesScreen(),
     CoursesScreen(),
     SettingsScreen(),
  ].obs;

  var title = [
    'HOME',
    'Categories',
    'Settings',
    'Search',
  ].obs;

}