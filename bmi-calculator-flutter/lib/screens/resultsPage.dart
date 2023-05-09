import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import '../components/reusableCard.dart';
import '../components/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.resultTxt,
      @required this.bmiVal,
      @required this.detailTxt});

  final String resultTxt;
  final String bmiVal;
  final String detailTxt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultTxt,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiVal,
                    style: kBMITextStyle,
                  ),
                  Text(
                    detailTxt,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomButton(
            buttonName: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}
