import 'package:dio/dio.dart';

class Apirepo {
  

String url;
Map<String,dynamic> payload;
Apirepo(
          this.payload,  
                this.url);


Dio dio= Dio();

getData(


  
  
  //!function constrictor's 


        Function () beforeSend,
        Function (Map<String,dynamic> data) onSuccess,
        Function (dynamic) onError,





){


//!body of fun
 
 
 
   dio.get(url,queryParameters: payload).then((response) {
      onSuccess(response.data);


  } ).catchError((error){
    onError(error);
  });
  



}












}