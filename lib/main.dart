import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}


class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }}

// https://flutter.dev/docs/get-started/codelab step 3.
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey[100],
            appBar: AppBar(
              title: Text('Your title text here'),
              backgroundColor: Colors.blueGrey[300],
            ),
            body: new GridView.builder(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return new Card (
                  child: new GridTile(
                      header: RandomWords(),
                      child: Image.asset(
                          'images/place-holder-1.jpg',
                          fit:BoxFit.contain,),
                  ),
                );
              },
            )));
  }
}
