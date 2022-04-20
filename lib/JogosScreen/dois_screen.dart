// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truco_points/ganhador_Screen/ganhador_screen.dart';

class DoisScreen extends StatefulWidget {
  const DoisScreen({Key? key}) : super(key: key);

  @override
  _DoisScreenState createState() => _DoisScreenState();
}

class _DoisScreenState extends State<DoisScreen> {
  int _counterA = 0;
  int _counterB = 0;
  String valor = "";

  void _incrementCounterA(int delta) {
    setState(() {
      _counterA += delta;
      String nomeum = ControllerNameUm.value.text;
      String nomeDois = ControllerNameDois.value.text;

      if (_counterA < 0) {
      } else if (_counterA >= 12) {
        int ptsA = _counterA;
        int ptsB = _counterB;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => GanhadorScreen(
                      nomeum,
                      nomeDois,
                      ptsA,
                      ptsB,
                    )));
        _counterA = 0;
        _counterB = 0;
      }
    });
  }

  void _incrementCounterB(int delta) {
    setState(() {
      _counterB += delta;
      String nomeum = ControllerNameDois.value.text;
      String nomeDois = ControllerNameUm.value.text;

      if (_counterB < 0) {
      } else if (_counterB >= 12) {
        int ptsA = _counterB;
        int ptsB = _counterA;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (c) => GanhadorScreen(
                      nomeum,
                      nomeDois,
                      ptsA,
                      ptsB,
                    )));
        _counterA = 0;
        _counterB = 0;
      }
    });
  }

  final ControllerNameUm = TextEditingController();
  final ControllerNameDois = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: const Text("Truco Points"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
              colors: [Color(0xff2B9EB3), Color(0xff2bb3a6)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            boxShadow: [
              BoxShadow(blurRadius: 0.1),
            ],
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        '$_counterA',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextField(
                        controller: ControllerNameUm,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nome do jogador 1',
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(right: 10, top: 20)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(-1)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(1)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(-3)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(3)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(-6)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-6",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(6)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+6",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(-9)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-9",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterA(9)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+9",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          Flexible(
                            child: ButtonTheme(
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              child: RaisedButton(
                                onPressed: () => {
                                  setState(() {
                                    _counterA = 0;
                                  })
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Text(
                                  "       Zerar       ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ), //Text
                                color: const Color(0xff2B9EB3),
                              ), //RaisedButton
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        '$_counterB',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextField(
                        controller: ControllerNameDois,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nome do jogador 2',
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(-1)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(1)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(-3)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(3)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(-6)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-6",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(6)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+6",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 10)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(-9)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "-9",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xffF8333C),
                            ), //RaisedButton
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ButtonTheme(
                            height: MediaQuery.of(context).size.height * 0.055,
                            child: RaisedButton(
                              onPressed: () => {_incrementCounterB(9)},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Text(
                                "+9",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ), //Text
                              color: const Color(0xff44AF69),
                            ), //RaisedButton
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(right: 5)),
                          Flexible(
                            child: ButtonTheme(
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              child: RaisedButton(
                                onPressed: () => {
                                  setState(() {
                                    _counterB = 0;
                                  })
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Text(
                                  "       Zerar       ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ), //Text
                                color: const Color(0xff2B9EB3),
                              ), //RaisedButton
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
