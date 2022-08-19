import 'package:cdemy/core/services/categoriesWithCourses_sevice.dart';
import 'package:cdemy/models/categoriesWithCourses_model.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class CategorieWithCoursesController extends BaseController{
  final _services = CategoriesWithCoursesServices();
  CategoriesWithCoursesModel? Data;
  final load = true.obs;

  @override
  Future<void> onInit() async {
    load.value = true;
    super.onInit();
    Data = await _services.getCategoriesWithCourses();
    load.value = false;
  }
}