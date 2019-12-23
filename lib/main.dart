import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[800],
          appBar: AppBar(
            title: Text('I am richest'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/place-holder-1.jpg'),
            ),
          ),
        )
    ),
  );
}

