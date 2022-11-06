import 'package:json_annotation/json_annotation.dart';
part 'AnimalFactsPOJO.g.dart';

@JsonSerializable()
class AnimalFactsPOJO
{
  // {
  // "name": "Black-and-White Colobus Monkey",
  // "latin_name": "Colobus guereza",
  // "animal_type": "Mammal",
  // "active_time": "Diurnal",
  // "length_min": "1.7",
  // "length_max": "1.9",
  // "weight_min": "18",
  // "weight_max": "30",
  // "lifespan": "14",
  // "habitat": "Forest",
  // "diet": "Primarily leaves, some fruit",
  // "geo_range": "Central and Eastern Africa",
  // "image_link": "https://upload.wikimedia.org/wikipedia/commons/6/6b/Colubusmonkey.JPG",
  // "id": 34
  // }

   late String name;
   late String latin_name;
   late String animal_type;
   late String active_time;
   late String length_min;
   late String length_max;
   late String weight_min;
   late String lifespan;
   late String habitat;
   late String diet;
   late String geo_range;
   late String image_link;
   late int id;

   AnimalFactsPOJO(this.name,this.latin_name,this.animal_type,this.active_time,this.length_min
       ,this.length_max,this.weight_min,this.lifespan);
   factory AnimalFactsPOJO.fromJson(Map<String, dynamic> json) => _$AnimalFactsPOJOFromJson(json);
   Map<String, dynamic> toJson() => _$AnimalFactsPOJOToJson(this);







}