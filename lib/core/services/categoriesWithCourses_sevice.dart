import 'package:cdemy/models/categoriesWithCourses_model.dart';
import 'package:dio/dio.dart';

class CategoriesWithCoursesServices {
  final Dio _dio = Dio();

  final String baseUrl = 'https://cdemy.ihashem.site/public/cdemy';

  getCategoriesWithCourses() async {
    Response response =
    await _dio.get('$baseUrl/items/category',
        options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              "Authorization":
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySUQiOiIyIiwiRW1haWwiOiJnd2Fzc291NkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJGcmVlbWl1bSIsImV4cCI6MTY1NDM2MjE4NiwiaXNzIjoidGhpc2lzbWV5b3Vrbm93IiwiYXVkIjoidGhpc2lzbWV5b3Vrbm93In0.c2-vOfSFdir4wRzSBvDTteq9QYwfmuPQhB-zmY2BwMw',
            }
        ));
    if (response.statusCode == 200) {
      print(response.data);
      return CategoriesWithCoursesModel.fromJson(response.data);
    }
    throw 'exception';
  }
}