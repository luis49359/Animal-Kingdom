import 'package:clonespotify/json/listas.dart';
import 'package:clonespotify/paginas/animalpage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int menuactivo = 0;
  int menuactivo2 = 0;
  List lista2 = kingdomsContent2[0]["animals"];
  List lista = kingdomsContent1[0]["animals"];
  String mainImage = kingdomsContent1[0]["img"];
  Color backColor = kingdomsContent1[0]["color"];
  Color textColor = kingdomsContent1[0]["colorText"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: barraSpotApp(),
      body: cuerpoSpot(),
    );
  }

  barraSpotApp() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            // ignore: prefer_const_literals_to_create_immutables
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "REINOS ANIMALES",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }

  cuerpoSpot() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(kingdoms.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        menuactivo = index;
                        lista = kingdomsContent1[index]["animals"];
                        lista2 = kingdomsContent2[index]["animals"];
                        mainImage = kingdomsContent1[index]["img"];
                        backColor = kingdomsContent1[index]["color"];
                        textColor = kingdomsContent1[index]["colorText"];
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kingdoms[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: menuactivo == index
                                  ? textColor
                                  : const Color.fromARGB(255, 68, 54, 40),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 3),
                        menuactivo == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: textColor,
                                    borderRadius: BorderRadius.circular(50)))
                            : Container(),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(mainImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        // menu 2
        const SizedBox(
          height: 50,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(lista.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget cetral
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: AnimalPage(
                                animal: lista[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(lista[index]['img']),
                                  fit: BoxFit.cover),
                              color: backColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          lista[index]['title'],
                          style: TextStyle(
                              color: textColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 180,
                          child: Text(
                            lista[index]['header'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: textColor.withOpacity(0.7),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
//fin menu centro
        //tercer bloque

        const SizedBox(
          height: 50,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(lista2.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget cetral
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: AnimalPage(
                                animal: lista2[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(lista2[index]['img']),
                                  fit: BoxFit.cover),
                              color: backColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          lista2[index]['title'],
                          style: TextStyle(
                              color: textColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 180,
                          child: Text(
                            lista2[index]['header'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: textColor.withOpacity(0.7),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        )
      ]),
    );
  }
}
