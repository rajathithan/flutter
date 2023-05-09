import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.ficons, this.onPress});

  final IconData ficons;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(ficons),
      elevation: 6.0,
      onPressed: onPress,
      splashColor: kBMIColor,
      fillColor: kButtonColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
