import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  double size = 40.0;
  var red = 36;
  var green = 0;
  var blue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Row(
          children: [
            firstRow(),
          ],
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Icon(
            Icons.alarm,
            color: Color.fromRGBO(red, green, blue, 1.0),
            size: 400.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  SizedBox firstRow() {
    return SizedBox(
      height: 100,
      child: Slider(
        value: size,
        min: 5.0,
        max: 50.0,
        onChanged: (value) {
          size = value;
        },
      ),
    );
  }

  SizedBox secondRow() {
    return SizedBox(
      height: 100,
      child: Slider(
        value: size,
        min: 5.0,
        max: 50.0,
        onChanged: (value) {
          size = value;
        },
      ),
    );
  }

  SizedBox thirdRow() {
    return SizedBox(
      height: 100,
      child: Slider(
        value: size,
        min: 5.0,
        max: 50.0,
        onChanged: (value) {
          size = value;
        },
      ),
    );
  }
}
