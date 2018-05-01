import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
//      child: new Stack(
//        alignment: Alignment.bottomCenter,
//        children: <Widget>[
//          const Text("Hello there"),
//          const Text("hey Again!"),
//          const Text("Gugu")
//        ],
//      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Item 1", textDirection: TextDirection.ltr,
            style: new TextStyle(fontSize: 15.2, color: Colors.white)
          ),
          new Text(
            "Item 2", textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 15.2, color: Colors.white)
          ),
          const Expanded(child: const Text("Item 3 Ok")),

        ],
      ),
//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Text("First Item",
//              textDirection: TextDirection.ltr,
//              style: new TextStyle(color: Colors.white)),
//          new Text(
//            "Second item",
//            textDirection: TextDirection.ltr,
//            style: new TextStyle(color: Colors.blue),
//          ),
//          new Container(
//            color: Colors.white,
//            alignment: Alignment.center,
//            child: new Text(
//              "Third item",
//              textDirection: TextDirection.ltr,
//              style: new TextStyle(color: Colors.blue, fontSize: 16.2),
//            ),
//          ),
//        ],
//      ),
//      child: new Text(
//        "Hello Container",
//        textDirection: TextDirection.ltr,
//        style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18.3),),
    );
  }
}
