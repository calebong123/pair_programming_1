import 'package:flutter/material.dart';
import 'package:pair_programming_1/screen/home/appbar.dart';
import 'package:pair_programming_1/screen/home/bottom.dart';
import 'package:pair_programming_1/screen/home/widgets/icon.dart';

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
      home: MyHomePage(title: 'My Icon'),
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
  double _size = 100;
  double _red = 0;
  double _green = 0;
  double _blue = 0;
  bool _resizeChecked = true;
  bool _colorChecked = true;

  double get getSize => _size;

  bool get getColorChecked => _colorChecked;
  set setSize(double value) {
    setState(() {
      _size = value;
    });
  }

  double get getRed => _red;

  set setRed(double value) {
    setState(() {
      _red = value;
    });
  }

  double get getGreen => _green;

  set setGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  double get getBlue => _blue;

  set setBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  void minSize() {
    setState(() {
      _size = _size - 50.0;
    });
  }

  void maxSize() {
    setState(() {
      _size = _size + 50.0;
    });
  }

  void donothing() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(children: [
            CheckboxListTile(
              title: Text('Allow resize'),
              value: _resizeChecked,
              onChanged: (bool value) {
                setState(() {
                  _resizeChecked = value;
                });
              },
            ),
            CheckboxListTile(
                title: Text('Allow change primer color?'),
                value: _colorChecked,
                onChanged: (bool value) {
                  setState(() => _colorChecked = value);
                }),
          ]),
        ),
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            if (_resizeChecked) AppBarIcon(this),
          ],
        ),
        body: Center(
          child: BodyIcon(
            size: getSize,
            red: getRed,
            green: getGreen,
            blue: getBlue,
          ),
        ),
        bottomNavigationBar: Bottom(state: this),
      ),
    );
  }
}
