part of 'chuck_norris_facts_bloc.dart';


@freezed
abstract class ChuckNorrisFactsEvent with _$ChuckNorrisFactsEvent {
  const factory ChuckNorrisFactsEvent.getRandomChuckNorrisFact() = _getRandomChuckNorrisFact;
}