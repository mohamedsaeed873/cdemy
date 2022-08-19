import 'package:cdemy/models/slid_model.dart';
import 'package:dio/dio.dart';




class SliderServices {
  final Dio _dio = Dio();

  final String baseUrl = 'https://cdemy.ihashem.site/public/cdemy';

  fetchSlider() async {
    Response response =
        await _dio.get('$baseUrl/items/courses', queryParameters:{
      'limit': '8',
      "fields": "id,title,thumbnail.data.full_url",
      "access_token":
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MiwiZXhwIjoxNjU5MjI0MzM0LCJ0dGwiOjIwMDAsInR5cGUiOiJhdXRoIiwia2V5IjoiZjUwYmYyYmQtMjhjYy00OTAxLWEzMDItZjM5OTc5MGMwM2NmIiwicHJvamVjdCI6ImNkZW15In0.1eLa_NMDK8NL6lzXPzMEswQ9SogpbfaiDEy25DuCbO8"
    });
    if (response.statusCode == 200) {
      print(response.data);
      return SlidModel.fromJson(response.data);
    }
    throw 'exception';
  }
}
