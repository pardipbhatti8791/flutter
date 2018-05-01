import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Search Button Tapped");
  }

  void _tabPress(pressed) {
    print("tab button press with Index $pressed");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        title: new Text("Gugu Bar"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("Icon Tapped!")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPress)
        ],
      ),
      // Other properties
      backgroundColor: Colors.grey.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hello gugu",
              style: new TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w400,
                color: Colors.deepOrange
              ),
            ),
            new InkWell(
              child: new Text(
                "Button!",
              ),
              onTap: () => debugPrint("Button is clicked"),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => debugPrint("floating button tapped"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going up',
        child: new Icon(Icons.call_missed),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Hey")),
        new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("Hello")),
        new BottomNavigationBarItem(icon: new Icon(Icons.call_missed), title: new Text("Gugu")),
      ], onTap: (int i) => debugPrint("Button tapped $i")),
    );
  }
}
