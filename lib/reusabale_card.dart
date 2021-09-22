import 'package:flutter/material.dart';

class Reuseablecard extends StatelessWidget {
  Reuseablecard({ this.colour,this.cardchild,this.onpress});
  final  Color colour;
  final cardchild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}