
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

IconButton moreInfoDialog({ @required BuildContext context }) {
  return IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text(
              "HOW TO USE",
              textAlign: TextAlign.center,
              style: GoogleFonts.actor(
                  fontWeight: FontWeight.bold
              ),
            ),
            content: const Text(
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
