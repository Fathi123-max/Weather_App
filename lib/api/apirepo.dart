import 'package:dio/dio.dart';

class Apirepo {
  
Dio? _dio;
String url;
Map<String,dynamic> payload;
Apirepo({required this.payload,required this.url});


getData(


  
  
  //!function constrictor's 
{

required Function () beforeSend,
required Function (Map<String,dynamic> data) onSuccess,
required Function (dynamic) onError,

}



){


//!body of fun
 
 
 
  _dio !=null ?  _dio!.get(url,queryParameters: payload).then((response) {
      onSuccess(response.data);


  } ).catchError((error){
    onError(error);
  })
  :Null;



}












}