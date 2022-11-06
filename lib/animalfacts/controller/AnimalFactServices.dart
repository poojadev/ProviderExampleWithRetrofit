

import 'package:animalfacts/util/AppConstants.dart';
import 'package:dio/dio.dart';

import '../../network/RestClient.dart';
import '../model/AnimalFactsPOJO.dart';
var dio = Dio()..options.baseUrl = AppConstants.BASE_URL;

class AnimalFactServices
{
  RestClient restApiClient = RestClient(dio);
  Future getAnimalFacts() async
  {
    return  await restApiClient.getAnimalFactList().then((value) {

    });
  }
}