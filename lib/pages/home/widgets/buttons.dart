import 'package:arch_technical_test/domain/models/prime_button.dart';
import 'package:arch_technical_test/pages/util/widgets/opacity.dart';
import 'package:flutter/material.dart';

Widget primaryColorButtonOpacity({
  @required bool isActive,
}){
    return isActive ? opacityWidget(
        opacity: 0.7,
        child: Container(color: Colors.white
        )
    ) : Container();
}

Widget primeButtonColor({
  @required PrimeButton primeButton,
  @required BuildContext context
}) {

  Color buttonColor() {
    return primeButton.isActive
        ? primeButton.num.isEven
          ? Colors.lightBlueAccent.withOpacity(0.64)
          : Colors.blue[400].withOpacity(0.54)
        : Colors.blue;
  }

  if(primeButton.isPrime) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: (MediaQuery.of(context).size.width - 32) / 2,
        color: buttonColor()
      ),
    );
  }
  return Container();
}

Widget primeButtonText({ @required String text }) {
  return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),
      ),
  );
}
