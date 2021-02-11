import 'file:///C:/Users/HugoTomas/Desktop/arch_technical_test/lib/pages2/util/widgets/bordered_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Align chuckNorrisFactsImage() {
  return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 150,
        child: Image(
          image: AssetImage(
              'assets/images/chuck_norris_3.png'
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
      style: TextStyle(
        fontSize: 22,
      ),
    ),
  );
}

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

Widget findOutMore({ @required orientation, @required String url }) {
  if(orientation == Orientation.portrait) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blue)
        ),
        onPressed: () => launch(url),
        child: Text("Find more facts here")
      ),
    );
  } else {
    return InkWell(
      onTap: () => launch(url),
      child: Text("Find more facts here")
    );
  }
}