import 'package:bmi_app/constant.dart';

import 'package:bmi_app/widgets/bottom_button.dart';
import 'package:bmi_app/widgets/reusable_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultPage({required this.bmiResult,required this.interpretation,required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMi CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: Constant.titleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: Constant.resultTxtStyle,
                  ),
                  Text(
                    bmiResult,
                    style: Constant.bMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: Constant.bodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              color: Constant.activeCardColor,
            ),
          ),
          BottomButtom(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
