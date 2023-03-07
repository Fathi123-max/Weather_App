import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:wether_application/model/currentweatherdata.dart';
import 'package:wether_application/model/fife_days_data.dart';
import 'package:wether_application/service/weatherservices.dart';

class HomeController extends GetxController{
  HomeController({required this.city});
CurrentWeatherData? currentWeatherData;
 String city;
 List<FiveDaysData> fiveDaysData=[];
 List <CurrentWeatherData> datalist=[];
@override
  void onInit() {
    iniState();
    getTopFiveSites();

    super.onInit();
  }
  
  void iniState() {
 
    getCurrentWeatherData();
    getFiveDaysData();
  }
  

updateWeather(){
  iniState();
}





  void getCurrentWeatherData() {

    WeatherServices(city:city).getCurrentWeatherData(beforeSend: () {
      update();
    },
    
     onSuccess: (currentWeatherData) {
       this.currentWeatherData=currentWeatherData;
     },
     
      onError: (p0) => print(p0)
      
      ,);


  }
  
  void getFiveDaysData() {



    WeatherServices(city:city).getFiveThereHoureForcastData(beforeSend: () {
      update();
    },
    
     onSuccess: (FiveDaysData) {
    fiveDaysData  =FiveDaysData;
     },
     
      onError: (p0) => print(p0)
      
      ,);







  }
  
  void getTopFiveSites() {

    List<String>  topSites =[
"cairo","cairo","cairo","cairo","cairo",
    ];


    topSites.forEach((element) {
    WeatherServices(city:element).getCurrentWeatherData(beforeSend: () {
      update();
    },
    
     onSuccess: (data) {
    datalist.add(data);
     },
     
      onError: (p0) => print(p0)
      
      ,);
});



  }












}