
import 'package:cdemy/core/services/view_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'base_controller.dart';

class ViewController extends BaseController {
  final _services = ViewServices();
  final value = false.obs;
  final fav = <String>[].obs;

  getFav(BuildContext context) async {

  }
}
