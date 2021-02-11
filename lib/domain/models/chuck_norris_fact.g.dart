// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chuck_norris_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChuckNorrisFact _$ChuckNorrisFactFromJson(Map json) {
  return ChuckNorrisFact(
    json['created_at'] as String,
    json['icon_url'] as String,
    json['id'] as String,
    json['updated_at'] as String,
    json['url'] as String,
    json['value'] as String,
    json['categories'] as List,
  );
}

Map<String, dynamic> _$ChuckNorrisFactToJson(ChuckNorrisFact instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'created_at': instance.createdAt,
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'url': instance.url,
      'value': instance.value,
    };
