import 'dart:async';

import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/infrastructure/chuck_norris_facts/chuck_norris_facts_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'chuck_norris_facts_event.dart';
part 'chuck_norris_facts_state.dart';
part 'chuck_norris_facts_bloc.freezed.dart';

class ChuckNorrisFactsBloc
    extends Bloc<ChuckNorrisFactsEvent, ChuckNorrisFactsState> {

  ChuckNorrisFactsRepository chuckNorrisRepository;

  ChuckNorrisFactsBloc({@required this.chuckNorrisRepository}) 
      : super(const ChuckNorrisFactsState.initial());

  @override
  Stream<ChuckNorrisFactsState> mapEventToState(
    ChuckNorrisFactsEvent event,
  ) async* {
    yield* event.map(
        getRandomChuckNorrisFact: (e) async* {
          yield const ChuckNorrisFactsState.loadInProgress();
          try {
            final ChuckNorrisFact fact = await chuckNorrisRepository.getChuckNorrisFacts();
            yield ChuckNorrisFactsState.loadSuccess(fact);
          } catch (err) {
            yield ChuckNorrisFactsState.loadFailure(err.toString());
          }
        }
    );
  }
}