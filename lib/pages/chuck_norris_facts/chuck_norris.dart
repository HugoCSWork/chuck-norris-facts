import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/widgets/chuck_norris_joke_card.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/widgets/chuck_norris_joke_text.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/widgets/chuck_norris_leading_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChuckNorris extends StatelessWidget {

  final ChuckNorrisFact chuckNorrisFact;

  const ChuckNorris({Key key, @required this.chuckNorrisFact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final double cardPosition = orientation == Orientation.portrait ? 128 : 110;
        final double imagePosition = orientation == Orientation.portrait ? 16 : 10;
        return SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: imagePosition),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 150,
                        child: Image(
                          image: AssetImage(
                              'assets/images/chuck_norris_3.png'
                          ),
                        ),
                      )
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(32, cardPosition, 32, 0),
                        child: chuckNorrisJokeCard(
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
                              jokeText(joke: chuckNorrisFact.value),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Last updated: ${chuckNorrisFact.updatedAt}",
                                    style: TextStyle(
                                        fontSize: 16
                                    ),
                                  )
                              ),
                              leadingImage(
                                  iconUrl: chuckNorrisFact.iconUrl
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    orientation == Orientation.portrait
                    ?
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue)),
                          onPressed: () => launch(chuckNorrisFact.url),
                          child: Text("Find more facts here")
                      ),
                    )
                    :
                    InkWell(
                      onTap: () => launch(chuckNorrisFact.url),
                      child: Text("Find more facts here")
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
