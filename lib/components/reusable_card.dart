import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.fitWidth, @required this.colour, this.cardChild});

  final double fitWidth;
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: fitWidth,
    );
  }
}
