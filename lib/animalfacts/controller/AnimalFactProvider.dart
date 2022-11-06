import 'package:animalfacts/animalfacts/model/AnimalFactsPOJO.dart';
import 'package:flutter/cupertino.dart';

import '../../network/RestClient.dart';
import '../../util/AppConstants.dart';
import 'AnimalFactServices.dart';
import 'package:dio/dio.dart';



class AnimalFactProvider extends ChangeNotifier
{
   AnimalFactServices service = AnimalFactServices();
  bool isLoading = false;

   AnimalFactsPOJO? animalFactsPOJO ;
   AnimalFactsPOJO?  get animalFactPojo  => animalFactsPOJO ;


  Future<AnimalFactsPOJO?> getAnimalFact() async {
    isLoading = true;
    notifyListeners();
 await service.restApiClient.getAnimalFactList().then((value) {
      print(value.active_time.toString());
      animalFactsPOJO = value;
    });


  //animalFactsPOJO = response;
    print("response" +animalFactsPOJO!.name.toString());

    isLoading = false;
    notifyListeners();
    return animalFactsPOJO;

  }

}