import 'package:flutter/material.dart';
import '../constants.dart';

class FawesomeWidget extends StatelessWidget {
  // constructor with named parameter
  FawesomeWidget({@required this.iconSelector, @required this.gender});
  final IconData iconSelector;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSelector,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
