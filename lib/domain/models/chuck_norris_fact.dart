import 'package:json_annotation/json_annotation.dart';

part 'chuck_norris_fact.g.dart';

/// Chuck Norris model to map from JSON file.
/// Uses JsonSerializable to automate json configuration
@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class ChuckNorrisFact {
  final List categories;
  final String createdAt;
  final String iconUrl;
  final String id;
  final String updatedAt;
  final String url;
  final String value;

  ChuckNorrisFact(this.createdAt, this.iconUrl, this.id, this.updatedAt,
      this.url, this.value, this.categories);

  factory ChuckNorrisFact.fromJson(Map<String, dynamic> json) =>
      _$ChuckNorrisFactFromJson(json);

  Map<String, dynamic> toJson() => _$ChuckNorrisFactToJson(this);


}
