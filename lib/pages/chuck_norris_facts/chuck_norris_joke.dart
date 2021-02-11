import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/widgets/chuck_norris_joke_card.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/widgets/chuck_norris_joke_text.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/widgets/chuck_norris_leading_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChuckNorrisJoke extends StatelessWidget {

  final ChuckNorrisFact chuckNorrisFact;

  const ChuckNorrisJoke({Key key, @required this.chuckNorrisFact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final int cardOrientation = orientation == Orientation.landscape ? 20 : 10;
        final double imageOrientationLeft = orientation == Orientation.landscape ? 250 : 100;
        final double imageOrientationHeight = orientation == Orientation.landscape ? 100 : 200;
        final double titleOrientationHeight = orientation == Orientation.landscape ? 65 : MediaQuery.of(context).size.height / 4.5;
        final double titleOrientationLeft = orientation == Orientation.landscape ? 250 : MediaQuery.of(context).size.width / 4 ;
        return Stack(
          children: [
            Positioned(
              left: imageOrientationLeft,
              top: 0,
              child: Container(
                height: imageOrientationHeight,
                width: 200,
                child: Image(
                  image: AssetImage(
                      'assets/images/chuck_norris_3.png'
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
                    child: chuckNorrisJokeCard(
                      height: MediaQuery.of(context).size.height / 2 - cardOrientation,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 25),
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
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                      onPressed: () => launch(chuckNorrisFact.url),
                      child: Text("Find more facts here")
                  ),
                ),
              ],
            ),
            Positioned(
              left: titleOrientationLeft,
              top: MediaQuery.of(context).size.height / 5,
              child: Container(
                  height: 200,
                  width: 200,
                  child: Text(
                    "DID YOU KNOW?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
            ),
          ],
        );
      },
    );
  }
}
