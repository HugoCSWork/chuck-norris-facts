import 'package:flutter/material.dart';

Widget loadingIconWithText({
  EdgeInsetsGeometry padding = EdgeInsets.zero,
  TextAlign textAlign = TextAlign.center,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
  TextStyle style
}) {
  return Column(
    mainAxisAlignment: mainAxisAlignment,
    children: [
      Center(
          child: CircularProgressIndicator()
      ),
      Padding(
        padding: padding,
        child: Text(
          "Loading...",
          textAlign: textAlign,
          style: style,
        ),
      )
    ],
  );
}