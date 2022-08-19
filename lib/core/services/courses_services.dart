import 'package:cdemy/models/courses_model.dart';
import 'package:dio/dio.dart';

class CoursesServices {
  final Dio _dio = Dio();

  final String baseUrl = 'https://cdemy.ihashem.site/public/cdemy';

  fetchCourses() async {
    Response response =
        await _dio.get('$baseUrl/items/courses', queryParameters: {
      "fields":
          "id,title,summery,slug,category,link,coupon,created_on,status,thumbnail.data.full_url",
      "access_token":
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjU5MjMwMTUwLCJ0dGwiOjIwMDAsInR5cGUiOiJhdXRoIiwia2V5IjoiZjUwYmYyYmQtMjhjYy00OTAxLWEzMDItZjM5OTc5MGMwM2NmIiwicHJvamVjdCI6ImNkZW15In0.zFnREWAtUSLpmPI9ZRVXqodIqiJdMShz7GzfajrB1Uk"
    });
    if (response.statusCode == 200) {
      print(response.data);
      return CoursesModel.fromJson(response.data);
    }
    throw 'exception';
  }
}
