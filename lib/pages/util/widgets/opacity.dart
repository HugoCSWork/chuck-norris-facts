import 'package:flutter/cupertino.dart';

Opacity opacityWidget({
  @required double opacity,
  Widget child
}) {
  return Opacity(
    opacity: opacity,
    child: child,
  );
}