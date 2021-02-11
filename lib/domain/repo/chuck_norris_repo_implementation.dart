import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';

abstract class ChuckNorrisRepositoryImplementation {
  Future<ChuckNorrisFact> getChuckNorrisFacts();
}

