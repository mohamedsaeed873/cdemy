import 'package:cdemy/models/GetCategory.dart';
import 'package:cdemy/models/getCoursesCategory_model.dart';
import 'package:cdemy/models/courses_model.dart';
import 'package:cdemy/models/getCategory_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';



class GetCategoriesServices {
  final Dio _dio = Dio();

  final String baseUrl = 'https://cdemy.ihashem.site/public/cdemy';


  getCategories() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    final response =
        await _dio.get("$baseUrl/items/category", queryParameters: {
      "fields": "id,status,created_on,name,icon.data",
      "access_token":token
    });
    if (response.statusCode == 200) {
      print(response.data);
      return GetCategory.fromJson(response.data);
    }
  }

  getCoursesCategories(int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    print(token);
    final response = await _dio.get("$baseUrl/items/category/$id",
        queryParameters: {
          "fields": "id,status,created_on,name,icon.data",
          "access_token": token
        });

    if (response.statusCode == 200) {
      print(response.statusCode);

      print(response.data);
      return GetCoursesCategoryModel.fromJson(response.data);
    }
  }

}
