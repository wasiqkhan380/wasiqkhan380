import 'package:flutter/material.dart';
import 'constants.dart';

class Iconcontent extends StatelessWidget {
  Iconcontent({this.icon,this.lebel});

  final IconData icon;
  final String lebel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,
          color: Colors.white70,
          size: 80.0,
        ),
        SizedBox(height: 15),
        Text(lebel,
            style: kLebeltextstyle,),

      ],);
  }
}