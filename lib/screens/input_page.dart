import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/dropdown_data.dart';
import '../components/reusable_card.dart';
import '../components/tick_and_cross_container.dart';
import '../components/bottom_button.dart';
import 'results_page.dart';

enum DecisionState {
  TickClass,
  CrossClass,
  TickRoom,
  CrossRoom,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<Widget> getTimeItems() {
    List<Text> timeItems = [];
    for (String time in timeList) {
      timeItems.add(Text(time));
    }
    return timeItems;
  }

  List<Widget> getPlayerItems() {
    List<Text> playerItems = [];
    for (String player in playerNumber) {
      playerItems.add(Text(player));
    }
    return playerItems;
  }

  DecisionState selectedStateClass;
  DecisionState selectedStateRoom;
  int sliderHeightMood = 80;
  int sliderHeightBattery = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: kAppTitle,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              fitWidth: double.infinity,
              colour: kBoxContainerColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'MY MOOD',
                    style: kContainerUsualTextStyle,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        sliderHeightMood.toString(),
                        style: kPercentageTextStyle,
                      ),
                      Text(
                        '%',
                        style: kContainerUsualTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: sliderHeightMood.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: kBottomContainerColor,
                    inactiveColor: Color(0xFFebe6e6),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeightMood = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  fitWidth: 170.0,
                  colour: kBoxContainerColor,
                  cardChild: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'TIME',
                        style: kContainerUsualTextStyle,
                      ),
                      Container(
                        height: 70.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          bottom: 5.0,
                        ),
                        color: kBoxContainerColor,
                        child: CupertinoPicker(
                          itemExtent: 40.0,
                          backgroundColor: kBoxContainerColor,
                          onSelectedItemChanged: (selectedIndex) {
                            print(selectedIndex);
                          },
                          children: getTimeItems(),
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  fitWidth: 170.0,
                  colour: kBoxContainerColor,
                  cardChild: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'TOTAL PLAYER',
                        style: kContainerUsualTextStyle,
                      ),
                      Container(
                        height: 70.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          bottom: 5.0,
                        ),
                        color: kBoxContainerColor,
                        child: CupertinoPicker(
                          itemExtent: 40.0,
                          backgroundColor: kBoxContainerColor,
                          onSelectedItemChanged: (selectedIndex) {
                            print(selectedIndex);
                          },
                          children: getPlayerItems(),
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    fitWidth: 170.0,
                    colour: kBoxContainerColor,
                    cardChild: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'CLASS TOMORROW?',
                          style: kContainerUsualTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      selectedStateClass =
                                          DecisionState.TickClass;
                                    },
                                  );
                                },
                                child: TickContainer(
                                  tickColour: selectedStateClass ==
                                          DecisionState.TickClass
                                      ? kActiveCardColour
                                      : kInactiveCardColour,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedStateClass =
                                        DecisionState.CrossClass;
                                  });
                                },
                                child: CrossContainer(
                                  crossColour: selectedStateClass ==
                                          DecisionState.CrossClass
                                      ? kActiveCardColour
                                      : kInactiveCardColour,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  fitWidth: 170.0,
                  colour: kBoxContainerColor,
                  cardChild: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'ROOM CARD?',
                        style: kContainerUsualTextStyle,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedStateRoom = DecisionState.TickRoom;
                                });
                              },
                              child: TickContainer(
                                tickColour:
                                    selectedStateRoom == DecisionState.TickRoom
                                        ? kActiveCardColour
                                        : kInactiveCardColour,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedStateRoom = DecisionState.CrossRoom;
                                });
                              },
                              child: CrossContainer(
                                crossColour:
                                    selectedStateRoom == DecisionState.CrossRoom
                                        ? kActiveCardColour
                                        : kInactiveCardColour,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              fitWidth: double.infinity,
              colour: kBoxContainerColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'DEVICE BATTERY PERCENTAGE',
                    style: kContainerUsualTextStyle,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        sliderHeightBattery.toString(),
                        style: kPercentageTextStyle,
                      ),
                      Text(
                        '%',
                        style: kContainerUsualTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: sliderHeightBattery.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: kBottomContainerColor,
                    inactiveColor: Color(0xFFebe6e6),
                    onChanged: (double newValue) {
                      setState(
                        () {
                          sliderHeightBattery = newValue.round();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
