import 'package:arch_technical_test/pages/home/home_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arch Tech Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //actorTextTheme
        textTheme: GoogleFonts.actorTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomeScaffold(),
    );
  }
}