import 'package:arch_technical_test/domain/models/prime_button.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/chuck_norris_facts_scaffold.dart';
import 'package:arch_technical_test/pages/home/home_item.dart';
import 'package:flutter/material.dart';

class HomeListBuilder extends StatefulWidget {
  @override
  _HomeListBuilderState createState() => _HomeListBuilderState();
}

class _HomeListBuilderState extends State<HomeListBuilder> {

  List<PrimeButton> data;

  bool isNumberPrime(int num) {
    for (var i = 2; i < num; i++) {
      if(num % i == 0) return false;
    }
    return num > 1;
  }

  @override
  void initState() {
    super.initState();
    data = List<PrimeButton>();
    for (int i = 1; i < 101; i++) {
      data.add(PrimeButton(
        num: i,
        isActive: false,
        isPrime: isNumberPrime(i)
      ));
    }
  }

  void buttonClickNavigation({@required num}) {
    Navigator.of(context).push( MaterialPageRoute(builder: (context) =>
        ChuckNorrisFactsScaffold()))
        .then((value) => {
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Number: $num is now disabled"),
                duration: Duration(seconds: 1),
              )),
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              PrimeButton button = data[index];
              return HomeItem(
                primaryColor: button.num.isEven ? Colors.red : Colors.green,
                primeButton: button,
                onClick: () {
                  if (!button.isActive && button.isPrime) {
                    buttonClickNavigation(num: button.num);
                    setState(() {
                      button.isActive = true;
                    });
                  }
                },
              );
            },
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
