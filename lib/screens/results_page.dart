import 'package:flutter/material.dart';
import 'package:publu/components/bottom_button.dart';
import 'package:publu/constants.dart';
import '../components/reusable_card.dart';
import '../app_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.finalDecision, @required this.tier});

  final String finalDecision;
  final String tier;

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
                    '$finalDecision!',
                    style: kResultMainDecision,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    tier,
                    style: kResultTierTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE CALCULATE',
            onTap: () {
              AppBrain appBrain = AppBrain();
              appBrain.mainVariable = 0;
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
