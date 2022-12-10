import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'Reusable_Card.dart';
import 'icon_content.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText,required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',textAlign: TextAlign.center,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                margin:EdgeInsets.all(30.0),
            child: Text(
              "YOUR RESULT",
              textAlign: TextAlign.center,
              style: kTitleTextStle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColortainer,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStle,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                "RE-CALCULATE",
                style: kLargeButtonStyle,
              )),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
