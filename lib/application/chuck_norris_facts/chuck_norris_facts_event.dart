part of 'chuck_norris_facts_bloc.dart';

@immutable
abstract class ChuckNorrisFactsEvent extends Equatable {}

class RetrieveChuckNorrisFactsEvent extends ChuckNorrisFactsEvent {
  @override
  List<Object> get props => null;
}
