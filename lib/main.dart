import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = [
      'what is your favorite food ?',
      'what is your favorite animal ?'
    ];
    // TODO: implement build
    return MaterialApp(
      // scaffold untuk design base template
      //design coloring UI
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('MIDAS_IN'),
            ),
            leading: Icon(Icons.card_giftcard),
            backgroundColor: Colors.orangeAccent,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
              )
            ],
          ),
          // BOdy center
          body: Center(
            child: Column(
              children: [
                Text('THe question'),
                RaisedButton(
                  child: Text('Answer 1'),
                ),
                RaisedButton(
                  child: Text('Answer 1'),
                ),
                RaisedButton(
                  child: Text('Answer 1'),
                )
              ],
            ),
          )),
    );
  }
}
