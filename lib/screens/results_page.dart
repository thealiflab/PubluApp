import 'package:flutter/material.dart';
import 'package:publu/components/bottom_button.dart';
import 'package:publu/constants.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kAppTitle,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'You Results',
                style: kResultHeadingTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kBoxContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You Should Play!',
                    style: kResultMainDecision,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'SSS',
                    style: kResultTierTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
