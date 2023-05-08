import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time_app/services/world_time.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "Loading...";

  void setUpWorldTime() async{
    WorldTime instance  = WorldTime("Paris", "Europe/Paris", "Paris.png");
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }
  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Text(time),
      ),
    );
  }
}
