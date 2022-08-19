import 'package:cdemy/controllers/base_controller.dart';
import 'package:cdemy/core/services/slider_services.dart';
import 'package:get/get.dart';
import '../models/slid_model.dart';


class SliderController extends BaseController{
  final _services = SliderServices();
  SlidModel? Data;
  final load = true.obs;

  @override
  Future<void> onInit() async {
  load.value = true;
  super.onInit();
  Data = await _services.fetchSlider();
  load.value = false;
  }
  }
