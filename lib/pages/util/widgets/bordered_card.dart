import 'package:flutter/material.dart';

Widget borderedCard({
  @required Widget child,
  @required double containerBorder,
  @required BoxShadow boxShadow,
  @required double elevation,
  @required double materialBorder,
  @required Color shadowColor,
  @required double height,

}) {
  return Container(
    height: height,
    decoration: new BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(containerBorder),
        topRight: Radius.circular(containerBorder),
        bottomLeft: Radius.circular(containerBorder),
        bottomRight: Radius.circular(containerBorder),
      ),
      boxShadow: [boxShadow],
      ),
    child: Material(
      elevation: elevation,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(materialBorder),
        topRight: Radius.circular(materialBorder),
        bottomLeft: Radius.circular(materialBorder),
        bottomRight: Radius.circular(materialBorder),
      ),
      shadowColor: shadowColor,
      child: child,
    ),
  );
}
