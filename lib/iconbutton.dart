import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,this.onpressed, this.color});

  final IconData icon;
  final Function onpressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white,),
      onPressed: onpressed,
      elevation: 0.0,
      shape:CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 54.0,height: 54.0,
      ),
      fillColor: color,
    );
  }
}