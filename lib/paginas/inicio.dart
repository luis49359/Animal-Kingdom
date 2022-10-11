import 'package:flutter/material.dart';
import 'package:clonespotify/paginas/Principal.dart';

class AnimalKingdom extends StatelessWidget {
  const AnimalKingdom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
