part of 'chuck_norris_facts_bloc.dart';

@immutable
abstract class ChuckNorrisFactsState extends Equatable {}

class ChuckNorrisFactsInitialState extends ChuckNorrisFactsState {
  @override
  List<Object> get props => [];
}

class ChuckNorrisFactsLoadingState extends ChuckNorrisFactsState {
  @override
  List<Object> get props => [];
}

class ChuckNorrisFactsSuccessfulState extends ChuckNorrisFactsState {
  final ChuckNorrisFact chuckNorrisFacts;

  ChuckNorrisFactsSuccessfulState({@required this.chuckNorrisFacts});

  @override
  List<Object> get props => [chuckNorrisFacts];
}


class ChuckNorrisFactsErrorState extends ChuckNorrisFactsState {

  final String error;

  ChuckNorrisFactsErrorState({ @required this.error });

  @override
  List<Object> get props => [error];
}
