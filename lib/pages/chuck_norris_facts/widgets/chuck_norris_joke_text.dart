import 'package:flutter/material.dart';

Widget jokeText({ @required String joke }) {
  return Padding(
    padding: const EdgeInsets.symmetric( horizontal: 16),
    child: Text(
      joke,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
      ),
    ),
  );
}