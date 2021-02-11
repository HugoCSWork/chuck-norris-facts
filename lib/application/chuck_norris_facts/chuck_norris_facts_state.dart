part of 'chuck_norris_facts_bloc.dart';

@freezed
abstract class ChuckNorrisFactsState with  _$ChuckNorrisFactsState {
  const factory ChuckNorrisFactsState.initial() = _Initial;
  const factory ChuckNorrisFactsState.loadInProgress() = _LoadInProgress;
  const factory ChuckNorrisFactsState.loadSuccess(ChuckNorrisFact chuckNorrisFact) = _LoadSuccess;
  const factory ChuckNorrisFactsState.loadFailure(String err) = _LoadFailure;
}

