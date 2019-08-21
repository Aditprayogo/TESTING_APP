import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  // normal property in dart
  String get resultPhase {
    String resultText;

    if (resultScore <= 50) {
      resultText = 'You are so stupid';
    } else {
      resultText = 'You are so smart';
    }

    return resultText;
  }

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
              child: Text(resultPhase)),
          Text(
            'Your final Score is : ',
            style: TextStyle(fontSize: 20, color: Colors.redAccent),
          ),
          Text(
            '$resultScore',
            style: TextStyle(color: Colors.blueGrey, fontSize: 22),
          )
        ],
      ),
    );
  }
}
