// ignore_for_file: deprecated_member_use, camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truco_points/JogosScreen/dois_screen.dart';
import 'package:truco_points/JogosScreen/quatro_screen.dart';
import 'package:truco_points/JogosScreen/seis_screen.dart';
import 'package:truco_points/homeScreen/home_screen.dart';

class TextoJogadores extends StatelessWidget {
  const TextoJogadores({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Escolha a quantidade \n     de jogadores",
      style: GoogleFonts.rancho(
        textStyle: const TextStyle(
            fontSize: 50,
            color: Colors.black,
            decoration: TextDecoration.none,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

// ignore: camel_case_types
class buttons2 extends StatelessWidget {
  const buttons2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => const DoisScreen())),
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: const Text(
          "     2 Jogadores     ",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ), //Text
        color: const Color(0xffF8333C),
      ), //RaisedButton
    );
  }
}

// ignore: camel_case_types
class buttons4 extends StatelessWidget {
  const buttons4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => const QuatroScreen())),
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: const Text(
          "     4 Jogadores     ",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ), //Text
        color: const Color(0xffF8333C),
      ), //RaisedButton
    );
  }
}

// ignore: camel_case_types
class buttons6 extends StatelessWidget {
  const buttons6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => const SeisScreen())),
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: const Text(
          "     6 Jogadores     ",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ), //Text
        color: const Color(0xffF8333C),
      ), //RaisedButton
    );
  }
}

class buttonsNovo extends StatelessWidget {
  const buttonsNovo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (c) => const HomeScreen())),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: const Text(
          "NOVO JOGO",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ), //Text
        color: Colors.red,
      ), //RaisedButton
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.nomeum,
    required this.nomeDois,
    required this.ptsA,
    required this.ptsB,
  }) : super(key: key);

  final String nomeum;
  final String nomeDois;
  final int ptsA;
  final int ptsB;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: const Color(0xff2B9EB3),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(
              " PARABENS",
              textAlign: TextAlign.center,
              style: GoogleFonts.rancho(
                  textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          Image.asset("assets/images/trofeu.png"),
          Text(
            "$nomeum derrotou $nomeDois",
            textAlign: TextAlign.center,
            style: GoogleFonts.rancho(
                textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500)),
          ),
          Text(
            " por $ptsA a $ptsB",
            textAlign: TextAlign.center,
            style: GoogleFonts.rancho(
                textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}

class CardWidgetTres extends StatelessWidget {
  const CardWidgetTres({
    Key? key,
    required this.nomeum,
    required this.nomeDois,
    required this.nomeTres,
    required this.ptsA,
    required this.ptsB,
    required this.ptsC,
  }) : super(key: key);

  final String nomeum;
  final String nomeDois;
  final String nomeTres;
  final int ptsA;
  final int ptsB;
  final int ptsC;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: const Color(0xff2B9EB3),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(
              " PARABENS",
              textAlign: TextAlign.center,
              style: GoogleFonts.rancho(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          Image.asset("assets/images/trofeu.png"),
          Text(
            "$nomeum derrotou $nomeDois e $nomeTres ",
            textAlign: TextAlign.center,
            style: GoogleFonts.rancho(
                textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500)),
          ),
          Text(
            " por $ptsA a $ptsB e $ptsC",
            textAlign: TextAlign.center,
            style: GoogleFonts.rancho(
                textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
