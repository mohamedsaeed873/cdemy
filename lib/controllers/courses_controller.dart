import 'package:cdemy/core/services/courses_services.dart';
import 'package:get/get.dart';
import '../models/courses_model.dart';
import 'base_controller.dart';

class CoursesController extends BaseController{
  final _services = CoursesServices();
  CoursesModel? Data;
  final load = true.obs;

  @override
  Future<void> onInit() async {
    load.value = true;
    super.onInit();
    Data = await _services.fetchCourses();
    load.value = false;
  }

}