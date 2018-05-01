import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blue,
      child: new Center(
        child: new Text(
          "Hello Gugu",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 34.5),
        ),
      ),
    );
  }
}