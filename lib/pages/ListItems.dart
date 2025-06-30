import 'package:flutter/material.dart';
import 'Itemcard.dart';
import 'SocialApp.dart';

class Listitems extends StatelessWidget {
  const Listitems({super.key});

  @override
  Widget build(BuildContext context) {
    List<SocialApp> socialApps = [
      SocialApp(name: 'Threads', minute: 20, isUse: true, isDay: false),
      SocialApp(name: 'X', minute: 30, isUse: false, isDay: true),
      SocialApp(name: 'Instagram', minute: 40, isUse: true, isDay: false),
      SocialApp(name: 'Facebook', minute: 50, isUse: false, isDay: true),
      SocialApp(name: 'Tiktok', minute: 60, isUse: true, isDay: false),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Socmedtime App', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
          shadows: [
            Shadow(blurRadius: 10.0,
              color: Colors.black,
              offset: Offset(2.0,2.0),
            ),
          ],
        ),),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: socialApps.map((app) => Itemcard(socialApp: app)).toList(),

      ),
    );
  }
}

