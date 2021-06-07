import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_sfetofor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'flutter_sfetofor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String strColor = 'R';
  Color _color = Colors.red;

  void _updateColor() {
    if (strColor == 'R') {
      strColor = 'Y';
    } else if (strColor == 'Y') {
      strColor = 'G';
    } else if (strColor == 'G') {
      strColor = 'U';
    } else if (strColor == 'U') {
      strColor = 'R';
    }
    setState(() {
      if (strColor == 'R') {
        _color = Colors.red;
      } else if (strColor == 'Y') {
        _color = Colors.yellow;
      } else if (strColor == 'G') {
        _color = Colors.green;
      } else if (strColor == 'U') {
        _color = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: _color,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateColor,
        tooltip: 'Change color!',
        child: Icon(Icons.add),
      ),
    );
  }
}
