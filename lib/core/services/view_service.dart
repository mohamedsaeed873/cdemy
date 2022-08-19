import 'package:cdemy/models/userFavCategory_model.dart';
import 'package:dio/dio.dart';

class ViewServices {
  final Dio _dio = Dio();

  final String baseUrl = 'https://cdemy.ihashem.site/public/cdemy';

  checkFav ()async {
    Response response =
    await _dio.get('$baseUrl/user_topics');
    if(response.statusCode == 200){
      print(response.data);
      return UserFavCategoryModel.fromJson(response.data);
    }
    throw Exception();
  }
}