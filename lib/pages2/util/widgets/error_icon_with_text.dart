import 'package:flutter/material.dart';

Widget errorIconWithText({
  @required String message,
  EdgeInsetsGeometry padding = EdgeInsets.zero,
  TextAlign textAlign = TextAlign.center,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
  TextStyle style
}) {
  return Column(
    mainAxisAlignment: mainAxisAlignment,
    children: [
      Center(
          child: Icon(Icons.error)
      ),
      Padding(
        padding: padding,
        child: Text(
          message,
          textAlign: textAlign,
          style: style,
        ),
      )
    ],
  );
}