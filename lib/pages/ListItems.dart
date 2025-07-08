import 'package:flutter/material.dart';
import 'Itemcard.dart';
import 'SocialApp.dart';

class Listitems extends StatelessWidget {
  const Listitems({super.key});

  @override
  Widget build(BuildContext context) {
    List<SocialApp> socialApps = [
      SocialApp(name: 'Threads', minute: 20, isUse: true, isDay: false, description: 'for chismis'),
      SocialApp(name: 'X', minute: 30, isUse: false, isDay: true, description: 'for chismis den'),
      SocialApp(name: 'Instagram', minute: 40, isUse: true, isDay: false, description: 'cgismis also'),
      SocialApp(name: 'Facebook', minute: 50, isUse: false, isDay: true, description: 'scroll scroll'),
      SocialApp(name: 'Tiktok', minute: 60, isUse: true, isDay: false, description: 'all time fave'),

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
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, '/add');
      },
      child: Icon(Icons.add),
      ),
    );
  }
}

