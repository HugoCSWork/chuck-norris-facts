import 'dart:convert';
import 'dart:math';

import 'package:arch_technical_test/domain/models/chuck_norris_fact.dart';
import 'package:flutter/services.dart';

class ChuckNorrisFactsRepository {

  /// Retrieves a random fact from the JSON file facts in the assets folder
  Future<ChuckNorrisFact> getChuckNorrisFacts() async {
    final data = await rootBundle.loadString('assets/json/facts.json');
    final mappedData = (json.decode(data) as List)
        .map((e) => e as Map<String, dynamic>)?.toList();

    final List<ChuckNorrisFact> facts = [];
    for (final item in mappedData) {
      final ChuckNorrisFact fact = ChuckNorrisFact.fromJson(item);
      facts.add(fact);
    }
    return facts[Random().nextInt(facts.length)];
  }
}