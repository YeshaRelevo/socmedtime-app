import 'package:flutter/material.dart';
import 'package:socmedtime_app/pages/Addsocial.dart';
import 'package:socmedtime_app/pages/ListItems.dart';
import 'pages/Dashboard.dart';

void main() {
  runApp(MaterialApp(
      routes: {
        '/': (context) => Listitems(),
        '/add': (context) => Addsocial()
      },
  ));
}
