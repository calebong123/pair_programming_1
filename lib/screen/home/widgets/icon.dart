import 'package:flutter/material.dart';

class BodyIcon extends StatelessWidget {
  BodyIcon({size, red, green, blue})
      : _size = size,
        _red = red,
        _green = green,
        _blue = blue;

  final _size;
  final _red;
  final _green;
  final _blue;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.alarm,
      color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1.0),
      size: _size,
    );
  }
}
