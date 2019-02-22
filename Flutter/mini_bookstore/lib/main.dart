import 'package:flutter/material.dart';
import 'package:mini_bookstore/Data/Book.dart';
import 'package:mini_bookstore/DataService.dart';

void main() => runApp(MyApp());

final List<Book> bookList = new List<Book>();

class MyApp extends StatelessWidget {
  //init the book list

  MyApp() {
    bookList.add(new Book("Math 101", "1"));
    bookList.add(new Book("Physics101", "2"));
    bookList.add(new Book("Physics 201", "3"));
    bookList.add(new Book("Science 101", "4"));
    bookList.add(new Book("Math 301", "5"));
    bookList.add(new Book("Englist 300", "6"));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Flutter Bookstore',
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
    return _MyHomePageState(title: 'Mini Book Store');
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String _title;
  _MyHomePageState({String title}) {
    _title = title;
  }
  final List<Book> book1 = List<Book>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text(_title)),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(8.0),
        /*  children: <Widget>[
        Text("Line 1"),
        Text('Line 2'),
        Text("Line 3"),
        Text('Line 4'),
      ], */
        children: bookList.map((data) => _));
  }

  Widget _buildListItem(BuildContext context, Map data) {
  //  final record = Book.fromMap(data);

    return Padding(
      key: ValueKey(.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(record.name),
          trailing: Text(record.votes.toString()),
          onTap: () => print(record),
        ),
      ),
    );
  }

  Widget _buildBodyStatic(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        Text("Line 1"),
        Text('Line 2'),
        Text("Line 3"),
        Text('Line 4'),
      ],
    );
  }
}
