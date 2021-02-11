import 'package:arch_technical_test/pages2/home/home_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCDF0FF),
      appBar: AppBar(
        title: Text(
          "CHUCK NORRIS FACTS",
          style: GoogleFonts.actor(),
        ),
        actions: <Widget>[
          moreInfo(context)
        ],
        centerTitle: true,
      ),
      body: HomeListBuilder(),
    );
  }
}

IconButton moreInfo(BuildContext context) {
  return IconButton(
      icon: const Icon(Icons.info_outline),
        onPressed: () {
          return showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text(
                "HOW TO USE",
                textAlign: TextAlign.center,
                style: GoogleFonts.actor(
                    fontWeight: FontWeight.bold
                ),
              ),
              content: Text(
                  "Click on prime numbers to retrieve a random fact "
                  "about Chuck Norris.\n\nOnce a prime number is clicked, you "
                      "can no longer retrieve a fact from that same number.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
              ),
            ),
          );
        }
      );
}
