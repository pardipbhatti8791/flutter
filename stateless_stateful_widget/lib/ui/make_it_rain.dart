import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {

  int _moneyCounter = 0;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                _moneyCounter > 2000 ? "Yeah you are milinior now. Please start paying the tax now" : "Get Rich!",
                style: new TextStyle(
                    color: _moneyCounter > 2000 ? Colors.red :Colors.grey,
                    fontWeight: _moneyCounter > 2000 ? FontWeight.w800 : FontWeight.w400,
                    fontSize: 29.9,
                ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text(
                '\$${_moneyCounter}',
                style: new TextStyle(
                    color: _moneyCounter > 2000 ? Colors.redAccent : Colors.greenAccent,
                    fontSize: 45.9,
                    fontWeight: FontWeight.w800),),
            )),
            new Expanded(
               child: new Center(
                   child: new FlatButton(
                       color: Colors.lightGreen,
                       textColor: Colors.white70,
                       onPressed: _rainMoney,
                       child: new Text(
                         "Let It Rain!",
                         style: new TextStyle(fontSize: 19.9),
                       ))
               ),
            )
          ],
        ),
      ),
    );
  }
}
