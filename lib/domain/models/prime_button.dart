
import 'package:flutter/material.dart';

/// Model for creating home buttons
class PrimeButton {
  final int num;
  bool isPrime;
  bool isActive;

  PrimeButton({ @required this.num, @required this.isPrime,
    @required this.isActive});
}