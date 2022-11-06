// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnimalFactsPOJO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalFactsPOJO _$AnimalFactsPOJOFromJson(Map<String, dynamic> json) =>
    AnimalFactsPOJO(
      json['name'] as String,
      json['latin_name'] as String,
      json['animal_type'] as String,
      json['active_time'] as String,
      json['length_min'] as String,
      json['length_max'] as String,
      json['weight_min'] as String,
      json['lifespan'] as String,
    )
      ..habitat = json['habitat'] as String
      ..diet = json['diet'] as String
      ..geo_range = json['geo_range'] as String
      ..image_link = json['image_link'] as String
      ..id = json['id'] as int;

Map<String, dynamic> _$AnimalFactsPOJOToJson(AnimalFactsPOJO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latin_name': instance.latin_name,
      'animal_type': instance.animal_type,
      'active_time': instance.active_time,
      'length_min': instance.length_min,
      'length_max': instance.length_max,
      'weight_min': instance.weight_min,
      'lifespan': instance.lifespan,
      'habitat': instance.habitat,
      'diet': instance.diet,
      'geo_range': instance.geo_range,
      'image_link': instance.image_link,
      'id': instance.id,
    };
