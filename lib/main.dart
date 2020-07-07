import 'package:flutter/material.dart';

//The mai function is the starting point for all our Flutter apps.

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// 실제 UI가 그려지는 부분은 이 아래
class _MyAppState extends State<MyApp> {
  int cnt = 0;

  void increase() {
    cnt++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('$cnt'),
              RaisedButton(
                onPressed: increase,
                child: Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

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

*/
