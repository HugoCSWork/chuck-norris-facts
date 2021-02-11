import 'package:arch_technical_test/pages/util/widgets/bordered_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Align widget to ensure the image is displayed underneath the card
Align chuckNorrisFactsImage() {
  return const Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 150,
        child: Image(
          image: AssetImage(
              'assets/images/chuck_norris.png'
          ),
        ),
      )
  );
}

Widget chuckNorrisFactsCard({
  @required Widget child,
  @required double height,
}) {
  return borderedCard(
    height: height,
    containerBorder: 10,
    boxShadow: BoxShadow(
      color: Colors.grey[400],
      blurRadius: 2.0,
      spreadRadius: 2.0,
    ),
    elevation: 7,
    materialBorder: 10,
    shadowColor: Colors.blue.withOpacity(.05),
    child: child,
  );
}

Padding chuckNorrisFactsText({ @required String text }) {
  return Padding(
    padding: const EdgeInsets.symmetric( horizontal: 16),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 22,
      ),
    ),
  );
}

/// Using CircularProviderAvatar and CachedNetworkImage to retrieve the internet
/// image specified in the JSON.
CircularProfileAvatar chuckNorrisFactsCircularImage({
  @required String iconUrl,
}) {
  return CircularProfileAvatar('',
    radius: 20,
    child: CachedNetworkImage(
      imageUrl: iconUrl,
      fit: BoxFit.fill,
      placeholder: (context, url) => Center(
        child: Container(
          width: 30,
          height: 30,
          margin: const EdgeInsets.all(1),
          child: const CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    ),
  );
}

/// Depending on the orientation it will display either a button or a text
/// widget.
Widget findOutMore({
  @required Orientation orientation, @required String url
}) {
  if(orientation == Orientation.portrait) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.blue)
        ),
        onPressed: () => launch(url),
        child: const Text("Find more facts here")
      ),
    );
  } else {
    return InkWell(
      onTap: () => launch(url),
      child: const Text("Find more facts here")
    );
  }
}