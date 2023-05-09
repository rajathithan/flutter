import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonName, @required this.onPress});

  final String buttonName;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: kButtonTextStyle,
            ),
          ],
        ),
        color: kBMIColor,
        height: kBMIHeight,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
      ),
    );
  }
}
