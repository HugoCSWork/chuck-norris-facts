import 'package:arch_technical_test/application/chuck_norris_facts/chuck_norris_facts_bloc.dart';
import 'file:///C:/Users/HugoTomas/Desktop/arch_technical_test/lib/pages2/util/widgets/loading_icon_with_text.dart';
import 'package:arch_technical_test/pages2/chuck_norris_facts/chuck_norris_facts_orientation_builder.dart';
import 'package:arch_technical_test/pages2/util/widgets/error_icon_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChuckNorrisFactsBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChuckNorrisFactsBloc, ChuckNorrisFactsState>(
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
          return ChuckNorrisFactsOrientationBuilder(
              chuckNorrisFact: state.chuckNorrisFacts
          );
        } else {
          return Container();
        }
      },
    );
  }
}
