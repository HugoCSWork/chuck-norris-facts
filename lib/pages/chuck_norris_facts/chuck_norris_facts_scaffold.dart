import 'package:arch_technical_test/application/chuck_norris_facts/chuck_norris_facts_bloc.dart';
import 'package:arch_technical_test/infrastructure/chuck_norris_facts/chuck_norris_facts_repository.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/chuck_norris_facts_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ChuckNorrisFactsScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChuckNorrisFactsBloc(
          chuckNorrisRepository: ChuckNorrisFactsRepository())
        ..add(const ChuckNorrisFactsEvent.getRandomChuckNorrisFact())
      ,
      child: Scaffold(
        backgroundColor: const Color(0xffCDF0FF),
        appBar: AppBar(
          title: Text(
            "CHUCK NORRIS FACTS",
            style: GoogleFonts.actor(),
          ),
          centerTitle: true,
        ),
        body: ChuckNorrisFactsBuilder(),
      ),
    );
  }
}
