import 'dart:convert';
import 'dart:math';

import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:arch_technical_test/domain/repo/chuck_norris_repo_implementation.dart';
import 'package:flutter/services.dart';

class ChuckNorrisFactsRepository implements ChuckNorrisRepositoryImplementation {
  @override
  Future<ChuckNorrisFact> getChuckNorrisFacts() async {
    var data = await rootBundle.loadString('assets/json/facts.json');
    var mappedData = await json.decode(data);
    List<ChuckNorrisFact> facts = [];
    mappedData.forEach((element) {
      ChuckNorrisFact fact = ChuckNorrisFact.fromJson(element);
      facts.add(fact);
    });
    return facts[Random().nextInt(facts.length)];
  }

}