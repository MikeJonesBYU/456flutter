import 'package:flutter/material.dart';

void main() => runApp (
    MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.blueGrey[800],
          appBar: AppBar(
            title: Text('hello world'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image (
              image:NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg')
            ),
          )
        ),
    ),
);

