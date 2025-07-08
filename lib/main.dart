import 'package:flutter/material.dart';
import 'WorldTime/pages/ChooseLocation.dart';
import 'WorldTime/pages/Home.dart';
import 'WorldTime/pages/Loading.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
