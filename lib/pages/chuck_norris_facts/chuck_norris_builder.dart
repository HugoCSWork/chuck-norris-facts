import 'package:arch_technical_test/application/chuck_norris_facts/chuck_norris_facts_bloc.dart';
import 'package:arch_technical_test/infrastructure/chuck_norris_facts/chuck_norris_facts_repository.dart';
import 'package:arch_technical_test/pages2/util/widgets/error_icon_with_text.dart';
import 'file:///C:/Users/HugoTomas/Desktop/arch_technical_test/lib/pages2/util/widgets/loading_icon_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chuck_norris.dart';

class ChuckNorrisBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChuckNorrisFactsBloc(
          chuckNorrisRepository: ChuckNorrisFactsRepository())
                ..add(RetrieveChuckNorrisFactsEvent()),
      child: Scaffold(
        backgroundColor: Color(0xffCDF0FF),
        appBar: AppBar(
          title: Text(
              "CHUCK NORRIS FACTS",
              style: GoogleFonts.actor(),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ChuckNorrisFactsBloc, ChuckNorrisFactsState>(
          builder: (context, state) {
            if (state is ChuckNorrisFactsInitialState) {
              return Container();
            } else if (state is ChuckNorrisFactsLoadingState) {
              return loadingIconWithText(
                  padding: const EdgeInsets.only(top: 8.0)
              );
            } else if (state is ChuckNorrisFactsErrorState) {
                return errorIconWithText(
                    message: "Error loading data, Error: ${state.error}",
                    padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 0)
                );
            } else if (state is ChuckNorrisFactsSuccessfulState) {
              return ChuckNorris(chuckNorrisFact: state.chuckNorrisFacts);
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
