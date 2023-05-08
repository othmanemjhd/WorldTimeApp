import 'package:flutter/material.dart';
import 'package:world_time_app/pages/Choose_location.dart';
import 'package:world_time_app/pages/Home.dart';
import 'package:world_time_app/pages/Loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    '/' : (context) => Loading(),
    '/home': (context) => Home(),
    '/Location' : (context)=> ChooseLocation(),
  },
));



