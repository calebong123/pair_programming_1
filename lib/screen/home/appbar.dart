import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class AppBarIcon extends StatelessWidget {
  AppBarIcon(status) : _status = status;

  final _status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.remove_circle_rounded),
            onPressed: _status.minSize),
        IconButton(
            icon: Icon(Mdi.alphaSCircle),
            onPressed: () => _status.setSize = 100.0),
        IconButton(
            icon: Icon(Mdi.alphaMCircle),
            onPressed: () => _status.setSize = 300.0),
        IconButton(
            icon: Icon(Mdi.alphaLCircle),
            onPressed: () => _status.setSize = 400.0),
        IconButton(
            icon: Icon(Icons.add_circle_outline), onPressed: _status.maxSize),
      ],
    );
  }
}
