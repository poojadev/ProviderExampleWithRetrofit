
import 'package:animalfacts/animalfacts/model/AnimalFactsPOJO.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../util/AppConstants.dart';
part 'RestClient.g.dart';

@RestApi(baseUrl: AppConstants.BASE_URL)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;



  @GET(AppConstants.ANIMAL_LIST)
  Future<AnimalFactsPOJO> getAnimalFactList();



}



