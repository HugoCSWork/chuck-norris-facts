import 'file:///C:/Users/HugoTomas/Desktop/arch_technical_test/lib/pages2/util/widgets/bordered_card.dart';
import 'package:flutter/material.dart';

Widget chuckNorrisJokeCard({
  @required Widget child,
  @required double height,
}) {
  return borderedCard(
      height: height,
      containerBorder: 10,
      boxShadow: BoxShadow(
        color: Colors.grey[400],
        blurRadius: 2.0,
        spreadRadius: 2.0,
      ),
      elevation: 7,
      materialBorder: 10,
      shadowColor: Colors.blue.withOpacity(.05),
      child: child,
  );
}
