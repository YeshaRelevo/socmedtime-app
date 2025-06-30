import 'package:flutter/material.dart';
import 'SocialApp.dart';

class Itemcard extends StatelessWidget {
  final SocialApp socialApp;
  const Itemcard({super.key, required this.socialApp});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 3,
      shadowColor: Colors.grey,


      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          socialApp.name,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
          Text('${socialApp.minute} minutes used', style:
            TextStyle( fontSize: 15,),),
          Text('Is it Day? ${socialApp.isDay}')
          ],
        ),
      ),
    );
  }
}