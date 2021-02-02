import 'package:flutter/material.dart';

class Hud extends StatefulWidget {
  final double value;
  Hud({this.value});

  @override
  _HudState createState() => _HudState(value);
}

class _HudState extends State<Hud> {
  double value;
  _HudState(this.value);

  @override
  Widget build(BuildContext context) {
    double _progress = 0;

    setState(() {
      // Put Func, only if called
      _progress = _progress + value;
    });

    return Container(
      height: 15,
      width: 280,
      child: LinearProgressIndicator(
        backgroundColor: Colors.red,
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
        value: _progress,
      ),
    );
  }
}
