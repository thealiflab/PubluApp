import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TickContainer extends StatelessWidget {
  TickContainer({@required this.tickColour});
  final Color tickColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: tickColour,
      child: Icon(
        FontAwesomeIcons.check,
        size: 50.0,
      ),
    );
  }
}

class CrossContainer extends StatelessWidget {
  CrossContainer({@required this.crossColour});
  final Color crossColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: crossColour,
      child: Icon(
        FontAwesomeIcons.times,
        size: 50.0,
      ),
    );
  }
}
