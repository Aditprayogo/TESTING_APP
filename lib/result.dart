import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(
            size: 60,
          ),
          RaisedButton(
              color: Colors.pink,
              onPressed: () {},
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              textColor: Colors.orangeAccent,
              child: Text('You Are Done'))
        ],
      ),
    );
  }
}
