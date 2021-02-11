import 'package:arch_technical_test/application/chuck_norris_facts/chuck_norris_facts_bloc.dart';
import 'package:arch_technical_test/pages/chuck_norris_facts/chuck_norris_facts_orientation.dart';
import 'package:arch_technical_test/pages/util/widgets/error_icon_with_text.dart';
import 'package:arch_technical_test/pages/util/widgets/loading_icon_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChuckNorrisFactsBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChuckNorrisFactsBloc, ChuckNorrisFactsState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => loadingIconWithText(
                padding: const EdgeInsets.only(top: 8.0)
            ),
            loadSuccess: (state) => ChuckNorrisFactsOrientation(
              chuckNorrisFact: state.chuckNorrisFact
            ),
            loadFailure: (state) => errorIconWithText(
              message: "Error loading data, Error: ${state.err}",
              padding: const EdgeInsets.fromLTRB(16, 8.0, 16, 0)
            )
        );
      },
    );
  }
}
