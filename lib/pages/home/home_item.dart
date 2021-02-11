import 'package:arch_technical_test/domain/models/prime_button.dart';
import 'package:arch_technical_test/pages/home/widgets/buttons.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {

  final PrimeButton primeButton;
  final VoidCallback onClick;
  final Color primaryColor;

  const HomeItem({Key key, this.primeButton, this.onClick,
        this.primaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: GestureDetector(
        onTap: onClick,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: SizedBox(
            height: 50,
            child: Stack(
              children: [
                Container(color: primaryColor),
                primaryColorButtonOpacity(isActive: primeButton.isActive),
                primeButtonColor(primeButton: primeButton, context: context),
                primeButtonText(text: primeButton.num.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
