import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  Bottom({state}) : _state = state;

  final _state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Slider(
                  value: _state.getRed,
                  min: 0.0,
                  max: 255,
                  onChanged: (value) => _state.setRed = value,
                ),
              ),
              buttonORtext(
                  color: _state.getRed.toInt().toString(),
                  isChecked: _state.getColorChecked,
                  backgroundcolor: Colors.red,
                  state: _state,
                  red: 255.0,
                  green: 0.0,
                  blue: 0.0),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Slider(
                  value: _state.getGreen,
                  min: 0.0,
                  max: 255,
                  onChanged: (value) => _state.setGreen = value,
                ),
              ),
              buttonORtext(
                  color: _state.getGreen.toInt().toString(),
                  isChecked: _state.getColorChecked,
                  backgroundcolor: Colors.green,
                  state: _state,
                  red: 0.0,
                  green: 255.0,
                  blue: 0.0),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Slider(
                  value: _state.getBlue,
                  min: 0.0,
                  max: 255,
                  onChanged: (value) => _state.setBlue = value,
                ),
              ),
              buttonORtext(
                  color: _state.getBlue.toInt().toString(),
                  isChecked: _state.getColorChecked,
                  backgroundcolor: Colors.blue,
                  state: _state,
                  red: 0.0,
                  green: 0.0,
                  blue: 255.0),
            ],
          )
        ],
      ),
    );
  }
}

Widget buttonORtext(
    {String color,
    bool isChecked,
    Color backgroundcolor,
    final state,
    double red,
    double green,
    double blue}) {
  return isChecked
      ? Expanded(
          flex: 2,
          child: FloatingActionButton(
              child: Text(color),
              backgroundColor: backgroundcolor,
              onPressed: () {
                state.setRed = red;
                state.setGreen = green;
                state.setBlue = blue;
              }),
        )
      : Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text(
              (color),
            ),
          ),
        );
}
