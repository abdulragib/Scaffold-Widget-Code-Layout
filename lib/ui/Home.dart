import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void onPress() {
    print("Search Tapped");
  }

  void alarm() => print("Alarm Tapped");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text("Hello World!"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.send),
            onPressed: () => debugPrint("Icon Tapped"),
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: onPress,
          ),
          new IconButton(
            icon: new Icon(Icons.access_alarm),
            onPressed: alarm,
          ),
        ],
      ),

      //other Properties
      backgroundColor: Colors.grey.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Welcome",
              style: TextStyle(
                color: Colors.black,
                fontSize: 60.0,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.w900,
              ),
            ),
            new Text(
              "Zentamon",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.w900,
              ),
            ),
            new InkWell(
              child: new Text("Button"),
              onTap: () => debugPrint("button tapped"),
            )
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("tapped"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going Up!',
        child: new Icon(Icons.call_missed),
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            // ignore: deprecated_member_use
            title: new Text("Like"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.print),
            // ignore: deprecated_member_use
            title: new Text("Dislike"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.call_missed),
            // ignore: deprecated_member_use
            title: new Text("Call"),
          ),
        ],
        onTap: (int i) => debugPrint("Hey Touched $i"),
      ),
    );
  }
}

// () is a anonymous method which does not have a name
//actions: <Widget>[] is know as list of widget which used to perform action in app bar.
// items : [] is used to create a list of widget
//debug print used to print of message on console
//inkwell used to create button
