import 'package:arch_technical_test/pages/home/home_list_builder.dart';
import 'package:arch_technical_test/pages/home/widgets/more_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_list_builder.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCDF0FF),
      appBar: AppBar(
        title: Text(
          "CHUCK NORRIS FACTS",
          style: GoogleFonts.actor(),
        ),
        actions: <Widget>[
          moreInfoDialog(context: context)
        ],
        centerTitle: true,
      ),
      body: HomeListBuilder(),
    );
  }
}
