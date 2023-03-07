import 'package:wether_application/api/apirepo.dart';
import 'package:wether_application/model/currentweatherdata.dart';
import 'package:wether_application/model/fife_days_data.dart';

class WeatherServices {
    WeatherServices({required this.city});
    String city;


///! https://api.openweathermap.org/data/2.5/weather?q=cairo&lang=ar&appid=ee15dd4a3d32ef77b1390582a2096806




String baseUrl = "https://api.openweathermap.org/data/2.5";
String apiKey = "appid=ee15dd4a3d32ef77b1390582a2096806";




getCurrentWeatherData(

//!Method Constructor


{

required Function () beforeSend,
required Function (CurrentWeatherData currentWeatherData ) onSuccess,
required Function (dynamic) onError,

}




){

//! Method Body 

final url = "$baseUrl/weather?q=$city&$apiKey";
Apirepo( {},url).getData(()=> beforeSend,
(data)=> onSuccess(CurrentWeatherData.fromJson(data)),

 
  onError);


}






getFiveThereHoureForcastData(

//!Method Constructor


{

required Function () beforeSend,
required Function (List<FiveDaysData> fiveDaysData ) onSuccess,
required Function (dynamic) onError,

}




){

//! Method Body 

//!http://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=ee15dd4a3d32ef77b1390582a2096806

 


final url = "$baseUrl/forcast?q=$city&$apiKey";
Apirepo({}, url ).getData(()=> beforeSend,
 (data){
  onSuccess((data["list"]as List).map((e) => FiveDaysData.fromJson(e)).toList());

 },

 
  onError);


}











}