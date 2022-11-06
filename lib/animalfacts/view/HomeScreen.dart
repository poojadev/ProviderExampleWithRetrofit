import 'package:animalfacts/animalfacts/controller/AnimalFactProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<AnimalFactProvider>(context, listen: false)
          .getAnimalFact()
          .then((value) {
        print(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:()
        {
          Provider.of<AnimalFactProvider>(context, listen: false)
              .getAnimalFact()
              .then((value) {
            print(value);
          });

        },
        tooltip: 'Refresh',
        child: const Icon(Icons.refresh),
      ),
      body: Consumer<AnimalFactProvider>(
        builder: (context, value, child) {
          // If the loading it true then it will show the circular progressbar
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // If loading is false then this code will show the list of animal facts
          final facts = value.animalFactsPOJO;
          return Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              color: Colors.white70,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                   // width: MediaQuery.of(context).size.width * 0.1,
                   // padding: EdgeInsets.all(20),

                    child: Image.network(
                      facts?.image_link.toString() ?? "",
                      fit: BoxFit.cover,
                    ),
                    //  ),
                  ),

                  Container(
                      padding: const EdgeInsets.all(10),
                      child:
                  Text(
                    facts?.name ?? "",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Latin Name :${facts!.latin_name}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),

          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Animal Type :${facts!.animal_type}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    facts?.geo_range ?? "",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Min Weight :${facts!.weight_min}",
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Length Min :${facts.length_min}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Length Max :${facts.length_max}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Active Time :${facts.active_time}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Diet :${facts.diet}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
              padding: const EdgeInsets.all(10),
          child:
                  Text(
                    "Lifespan :${facts.lifespan}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  const Divider(thickness: 1,color: Colors.blueGrey),
          Container(
          padding: const EdgeInsets.all(10),
          child: Text(
                    "Habitat :${facts.habitat}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ],
              ));
        },
      ),
    );
  }
}
