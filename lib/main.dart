import 'package:flutter/material.dart';

//The mai function is the starting point for all our Flutter apps.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int cnt = 0;

  void increase() {
    cnt++;
    print(cnt);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          title: Text("Stateless Widget"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text("${cnt}"),
            ),
            RaisedButton(
              onPressed: increase,
              child: Text("Button"),
            )
          ],
        ),
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/

/* 
  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Stateless Widget'),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Column(children: <Widget>[
          Center(
            child: Text("$cnt"),
          ),
          RaisedButton(
            onPressed: increase,
            child: Text("Button"),
          ),
        ],
      ),
    ),
  );
*/
