import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,this.ButtonTitle});
  final Function onTap;
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Padding(
          padding: const EdgeInsets.only(bottom:16.0),
          child: Text(ButtonTitle,
            style: kLargebuttontextstyle,
          ),
        )),
        color: kBottamcontainercolor,
        margin: EdgeInsets.only(top: 5),
        width: double.infinity,
        height: kBottamContainerHeight,
      ),
    );
  }
}
