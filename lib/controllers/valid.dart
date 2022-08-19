
import 'package:cdemy/controllers/base_controller.dart';
import '../core/constant/valid_message.dart';

class ValidInput extends BaseController{
  valid(String val , int min , int max){
    if(val.length>max){
      return "$messageInputMax $max";
    }
    if(val.isEmpty){
      return "$messageInputEmpty";
    }
    if(val.length<min){
      return "$messageInputMin $min";
    }
  }
}