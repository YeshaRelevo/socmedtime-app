import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Socmedtime App'),
        backgroundColor: Colors.purpleAccent[700],
      ),
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              'Goodbye',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}


