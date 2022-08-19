import 'package:cdemy/controllers/base_controller.dart';
import 'package:cdemy/core/services/getCategories_services.dart';
import 'package:cdemy/models/GetCategory.dart';
import 'package:cdemy/models/getCoursesCategory_model.dart';
import 'package:cdemy/models/getTopicsCategory_model.dart';
import 'package:get/get.dart';


class GetCategoriesController extends BaseController {
  final _services = GetCategoriesServices();
  GetCategory? Data;
  GetCoursesCategoryModel? getCourseModel;
  GetTopicsCategoryModel? getTopicsCategoryModel;
  final load = true.obs;

  @override
  Future<void> onInit() async {
    load.value = true;
    super.onInit();
    Data = await _services.getCategories();
    print(Data);
    load.value = false;
  }

  getCoursesByCategory(int id) async {
    getCourseModel = await _services.getCoursesCategories(id);
    print(getCourseModel!.data);
  }

}
