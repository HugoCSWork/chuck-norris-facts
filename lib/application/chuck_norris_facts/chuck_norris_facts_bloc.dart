import 'dart:async';

import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/domain/repo/chuck_norris_repo_implementation.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'chuck_norris_facts_event.dart';
part 'chuck_norris_facts_state.dart';

class ChuckNorrisFactsBloc
    extends Bloc<ChuckNorrisFactsEvent, ChuckNorrisFactsState> {

  ChuckNorrisRepositoryImplementation chuckNorrisRepository;

  ChuckNorrisFactsBloc({@required this.chuckNorrisRepository}) 
      : super(ChuckNorrisFactsInitialState());

  @override
  Stream<ChuckNorrisFactsState> mapEventToState(
    ChuckNorrisFactsEvent event,
  ) async* {
    if (event is RetrieveChuckNorrisFactsEvent) {
      yield ChuckNorrisFactsLoadingState();
      try {
        final ChuckNorrisFact fact = await chuckNorrisRepository.getChuckNorrisFacts();
        yield ChuckNorrisFactsSuccessfulState(chuckNorrisFacts: fact);
      } catch (err) {
        yield ChuckNorrisFactsErrorState(error: err.toString());
      }
    }
  }
}
