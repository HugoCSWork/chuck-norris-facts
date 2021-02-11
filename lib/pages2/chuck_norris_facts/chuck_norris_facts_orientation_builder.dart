import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/pages2/chuck_norris_facts/chuck_norris_facts.dart';
import 'package:flutter/material.dart';

class ChuckNorrisFactsOrientationBuilder extends StatelessWidget {
  final ChuckNorrisFact chuckNorrisFact;

  const ChuckNorrisFactsOrientationBuilder({ Key key, this.chuckNorrisFact })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if(orientation == Orientation.portrait) {
          return chuckNorrisFacts(
              context: context,
              chuckNorrisFact: chuckNorrisFact,
              orientation: orientation
          );
        } else {
          return SingleChildScrollView(
              child: chuckNorrisFacts(
                  context: context,
                  chuckNorrisFact: chuckNorrisFact,
                  orientation: orientation
              ),
          );
        }
      },
    );
  }
}
