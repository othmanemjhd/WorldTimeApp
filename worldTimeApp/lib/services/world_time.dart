import 'package:http/http.dart';
import 'dart:convert';



class WorldTime {

  late String location;
  late String time ;
  late String url;
  late String flag;

  WorldTime(this.location,this.url,this.flag);

  Future<void> getTime() async{
    // make the request
    Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body) as Map <String,dynamic>;
      String dateTime = data["datetime"];
      String offset = data["utc_offset"];
    /*  print("date time : $dateTime");
      print("offset : $offset");*/

      DateTime timeNow = DateTime.parse(dateTime);

      // convert the offset to int and add it the datetime
      int offsetInt = int.parse(offset.substring(0,3));
      timeNow = timeNow.add(Duration(hours: offsetInt));
      time = timeNow.toString();
    }
  }
}