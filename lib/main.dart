import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

            // warna orange
            backgroundColor: Color(0xFFFF9000),
          ),
          body: Center(
            child: Text(
              'THis is my first app',
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
