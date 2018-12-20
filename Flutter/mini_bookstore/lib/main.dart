import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.limeAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() {
    return _MyHomePageState(title:'Flutter Demo Home Page');
  }
}

class _MyHomePageState extends State<MyHomePage> {
    String _title;
  _MyHomePageState ({String title}){
    _title = title;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text(_title) ),
      body: Text("Mini Book Store"),
    );
  }
}
