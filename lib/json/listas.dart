import 'package:flutter/material.dart';

//EXT
const List kingdoms = [
  "Felinos",
  "Acuáticos",
  "Mamíferos",
];

const List kingdomsContent1 = [
  {
    "img": "assets/images/catKingdomMain.jpg",
    "title": "Felinos",
    "description": "Feel good with this positively timeless playlist!",
    "color": Color.fromARGB(255, 255, 215, 175),
    "colorText": Color.fromARGB(255, 168, 118, 9),
    "animals": [
      {
        "img": "assets/images/cat1.jpg",
        "sound": "songs/cat1.mp3",
        "title": "Leon",
        "header": "Rey de selva",
        "description":
            "Mamifero carnivoro de la familia de los felinos y una de las cinco especies del genero pantera",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
    "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat2.jpg",
        "sound": "songs/cat2.mp3",
        "title": "Tigre",
        "header": "Son animales solitarios",
        "description":
            "Los tigres son los más emblemáticos de los grandes felinos.",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat3.jpg",
        "sound": "songs/cat3.mp3",
        "title": "Guepardo",
        "header": "De gran velocidad",
        "description":
            "El guepardo es un cazador diurno que se aprovecha de sus movimientos sigilosos y de su característica piel moteada.",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat4.jpg",
        "sound": "songs/cat4.mp3",
        "title": "Jaguar",
        "header": "Tigre de america",
        "description":
            "Este felino es el llamado 'tigre de América', por ser el más grande que habita en el continente. ",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat5.jpg",
        "sound": "songs/cat5.mp3",
        "title": "Puma",
        "header": "El leon americano",
        "description":
            "Pumas son mamíferos y toman leche materna. Este mamífero es identificado por su intensa apariencia",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      }
    ]
  },
  {
    "img": "assets/images/aquaKingdomMain.jpg",
    "title": "Acuáticos",
    "description": "Feel good with this positively timeless playlist!",
    "color": Color.fromARGB(255, 119, 181, 240),
    "colorText": Color.fromARGB(255, 255, 255, 255),
    "animals": [
      {
        "img": "assets/images/aqua1.jpg",
        "sound": "songs/aqua1.mp3",
        "title": "tiburon",
        "header": "Rey del mar",
        "description":
            "Los tiburones son un grupo de peces carnívoros marinos, que van en tamaño desde el tiburón pigmeo, que es de siete pulgadas de largo, hasta el tiburón ballena.",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua2.jpg",
        "sound": "songs/aqua2.mp3",
        "title": "Pulpo",
        "header": "Octopodos del mar",
        "description":
            "El pulpo es un invertebrado cefalópodo, eso quiere decir que tiene los pies den la cabeza (cefalo quiere decir cabeza, y podo, pies).",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua3.jpg",
        "sound": "songs/aqua3.mp3",
        "title": "Foca",
        "header": "Las focas verdaderas",
        "description":
            "Son una familia de mamíferos pinnípedos marinos adaptados a vivir en medios acuáticos la mayor parte del tiempo.",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua4.jpg",
        "sound": "songs/aqua4.mp3",
        "title": "Delfin",
        "header": "Delfin del mar",
        "description":
            "Mamífero acuático de unos 2,5 m de longitud, color grisáceo, hocico prolongado en forma de pico, y boca grande provista de multitud de pequeños dientes.",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua5.jpg",
        "sound": "songs/aqua5.mp3",
        "title": "Estrella de mar",
        "header": "Estrella del mar",
        "description":
            "Las estrellas de mar son animales marinos que solo habitan en aguas saladas.",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
    ]
  },
  {
    "img": "assets/images/mamKingdomMain.jpg",
    "title": "Mamíferos",
    "description": "Feel good with this positively timeless playlist!",
    "color": Color.fromARGB(255, 39, 112, 24),
    "colorText": Color.fromARGB(255, 255, 255, 255),
    "secondColor" :  Color.fromARGB(255, 189, 168, 49),
    "animals": [
      {
        "img": "assets/images/mam1.jpg",
        "sound": "songs/mam1.mp3",
        "title": "Elefante",
        "header": "Los más grandes",
        "description":
            "Los animales terrestres más grandes. Igual de inteligentes que algunos primates",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam2.jpg",
        "sound": "songs/mam2.mp3",
        "title": "hipopótamo",
        "header": "Es muy grande",
        "description":
            "Es un mamífero semiacuático que suele habitar lagos, ríos y pantanos lo suficientemente profunda para poder sumergir todo su cuerpo.",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam3.jpg",
        "sound": "songs/mam3.mp3",
        "title": "Mono",
        "header": "Gran primate similforme",
        "description":
            "Son animales cuadrúpedos, mamíferos, con cuerpos de entre 60 y 90 cm de alto y un peso de entre 32 y 70 kg",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam4.jpg",
        "sound": "songs/mam4.mp3",
        "title": "Oso",
        "header": "De gran tamaño",
        "description": "Son animales de gran tamaño, generalmente omnívoros.",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam5.jpg",
        "sound": "songs/mam5.mp3",
        "title": "Jirafas",
        "header": "La mas alta",
        "description":
            "Es el animal más alto conocido, llegando a alcanzar los 6 metros de altura.",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
    ]
  },
];

const List kingdomsContent2 = [
  {
    "img": "assets/images/catKingdomMain.jpg",
    "title": "Felinos",
    "description": "Feel good with this positively timeless playlist!",
    "color": Color.fromARGB(255, 255, 215, 175),
    "colorText": Color.fromARGB(255, 168, 118, 9),
    "animals": [
      {
        "img": "assets/images/cat6.jpg",
        "sound": "songs/cat6.mp3",
        "title": "Leopardo",
        "header": "De las nieves",
        "description":
            "Mamífero carnicero de metro y medio de largo desde el hocico hasta el arranque de la cola, y de unos siete decímetros de alto. ",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat7.jpg",
        "sound": "songs/cat7.mp3",
        "title": "Lince",
        "header": "El gato salvaje",
        "description":
            "El lince es una especie de mamífero carnívoro de la familia Felidae perteneciente al género Linx que se encuentra en peligro de extinción en España",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat8.jpg",
        "sound": "songs/cat8.mp3",
        "title": "Ocelotes",
        "header": "EL ataca ganados",
        "description":
            "Los ocelotes son cazadores oportunistas y comen una variedad de animales, incluidos roedores, conejos, ciervos jóvenes, pájaros, serpientes, lagartos y peces.",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat9.jpg",
        "sound": "songs/cat9.mp3",
        "title": "Gato dorado asiatico",
        "header": "Cato puma temminckii",
        "description":
            "Es una especie de mamífero carnívoro de la familia Felidae de media alzada, mide 90 cm de longitud, más 50 cm de la cola, pesando de 12 a 16 kg.",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      },
      {
        "img": "assets/images/cat10.jpg",
        "sound": "songs/cat10.mp3",
        "title": "Gato serval",
        "header": "El gato exotico",
        "description":
            "Esta especie es de una de las más valoradas y exóticas de la familia de los felinos. El gato serval es de origen africano",
        "recom": 0,
        "color": Color.fromARGB(255, 255, 215, 175),
        "colorText": Color.fromARGB(255, 168, 118, 9),
      }
    ]
  },
  {
    "img": "assets/images/aquaKingdomMain.jpg",
    "title": "Acuáticos",
    "description": "Feel good with this positively timeless playlist!",
    "color": Color.fromARGB(255, 119, 181, 240),
    "colorText": Color.fromARGB(255, 255, 255, 255),
    "animals": [
      {
        "img": "assets/images/aqua6.jpg",
        "sound": "songs/aqua6.mp3",
        "title": "Ballena",
        "header": "El mas grande",
        "description":
            "Las ballenas son los animales más grandes que jamás hayan existido. Pertenecen a un grupo de mamíferos marinos conocidos como cetáceos.",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua7.jpg",
        "sound": "songs/aqua7.mp3",
        "title": "Cangrejo",
        "header": "Un pequeño crustaceo",
        "description":
            "Los cangrejos son crustáceos que habitan tanto en aguas dulces como saladas y que pueden vivir tanto en el fondo del mar o a escasa profundidad de la tierra.",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua8.jpg",
        "sound": "songs/aqua8.mp3",
        "title": "Caballito de mar",
        "header": "Los monogamos",
        "description":
            "Los caballitos de mar son peces. Viven en el agua, respiran usando braquias y tienen una vejiga natatoria. ",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua9.jpg",
        "sound": "songs/aqua9.mp3",
        "title": "Pez espada",
        "header": "De la espada",
        "description":
            "El pez espada es conocido comúnmente como «el gladiador», debido a la forma de su cuerpo y a la similitud de su pico con una espada (gladius en latín).",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/aqua10.jpg",
        "sound": "songs/aqua10.mp3",
        "title": "Mantarraya",
        "header": "La manta gigante",
        "description":
            "La mantarraya, también conocida como manta gigante, es un tipo de pez raya que siempre cautiva a quien la observa. ",
        "recom": 1,
        "color": Color.fromARGB(255, 119, 181, 240),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      }
    ]
  },
  {
    "img": "assets/images/mamKingdomMain.jpg",
    "title": "Mamíferos",
    "description": "Feel good with this positively timeless playlist!",
    "color": Color.fromARGB(255, 39, 112, 24),
    "colorText": Color.fromARGB(255, 255, 255, 255),
    "secondColor" :  Color.fromARGB(255, 189, 168, 49),
    "animals": [
      {
        "img": "assets/images/mam6.jpg",
        "sound": "songs/mam6.mp3",
        "title": "Cebra",
        "header": "Con mas rayas",
        "description":
            "Son animales sociales que viven en manadas y pasan en grupo, normalmente en hierba",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam7.jpg",
        "sound": "songs/mam7.mp3",
        "title": "Rinocerontes",
        "header": "Segundo mas grande",
        "description":
            "Tiene dos cuernos y un morro ancho y recto adaptado para cortar la hierba de la que se alimenta.",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam8.jpg",
        "sound": "songs/mam8.mp3",
        "title": "Alce",
        "header": "Habitante de bosques",
        "description":
            "Mamífero rumiante , parecido al ciervo y tan corpulento como el caballo , de cuello corto y astas en forma de pala",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam9.jpg",
        "sound": "songs/mam9.mp3",
        "title": "Venado",
        "header": "Amigo del bosque",
        "description":
            "Mamífero rumiante, de tamaño mediano, perteneciente a la familia de los cérvidos.",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      },
      {
        "img": "assets/images/mam10.jpg",
        "sound": "songs/mam10.mp3",
        "title": "Zorro",
        "header": "El zorro rojo",
        "description":
            "Es un mamífero cuadrúpedo que pertenece a la familia de los caninos. Se le suele confundir con otros animales como los lobos y los perros.",
        "recom": 2,
        "color": Color.fromARGB(255, 39, 112, 24),
        "colorText": Color.fromARGB(255, 255, 255, 255),
        "secondColor" :  Color.fromARGB(255, 189, 168, 49),
      }
    ]
  },
];