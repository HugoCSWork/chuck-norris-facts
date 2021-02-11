
import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/pages2/chuck_norris_facts/widgets/chuck_norris_facts_widgets.dart';
import 'package:flutter/material.dart';

Widget chuckNorrisFacts({
  @required BuildContext context,
  @required ChuckNorrisFact chuckNorrisFact,
  @required Orientation orientation
}){
  final double cardPosition = orientation == Orientation.portrait ? 128 : 110;
  final double imagePosition = orientation == Orientation.portrait ? 16 : 10;

  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.only(top: imagePosition),
              child: chuckNorrisFactsImage()
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(32, cardPosition, 32, 0),
                  child: chuckNorrisFactsCard(
                    height: MediaQuery.of(context).size.height / 1.6,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("DID YOU KNOW?",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        chuckNorrisFactsText(text: chuckNorrisFact.value),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Last updated: ${chuckNorrisFact.updatedAt}",
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            )
                        ),
                        chuckNorrisFactsCircularImage(
                            iconUrl: chuckNorrisFact.iconUrl
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              findOutMore(orientation: orientation, url: chuckNorrisFact.url),
            ],
          )
        ]
    ),
  );
}