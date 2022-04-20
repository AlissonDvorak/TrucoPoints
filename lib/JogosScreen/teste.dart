import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:truco_points/ganhador_Screen/ganhador_screen.dart';

class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
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
        appBar: AppBar(
          title: const Text(''),
        ),
        body: LayoutBuilder(
          builder: ((context, constraints) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '$_counterA',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          TextField(
                            controller: ControllerNameUm,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Nome do jogador 1',
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: ButtonTheme(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    child: ElevatedButton(
                                      onPressed: () => {_incrementCounterA(1)},
                                      child: const Text(
                                        " +1 ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff44AF69),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ), //RaisedButton
                                  ),
                                ),
                                Flexible(
                                  child: ButtonTheme(
                                    height: MediaQuery.of(context).size.height *
                                        0.030,
                                    child: ElevatedButton(
                                      onPressed: () => {_incrementCounterA(1)},
                                      child: const Text(
                                        " +1 ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff44AF69),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ), //RaisedButton
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: ButtonTheme(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: ElevatedButton(
                                    onPressed: () => {_incrementCounterA(1)},
                                    child: const Text(
                                      " +1 ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff44AF69),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ), //RaisedButton
                                ),
                              ),
                              Flexible(
                                child: ButtonTheme(
                                  height: MediaQuery.of(context).size.height *
                                      0.030,
                                  child: ElevatedButton(
                                    onPressed: () => {_incrementCounterA(1)},
                                    child: const Text(
                                      " +1 ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff44AF69),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ), //RaisedButton
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: ButtonTheme(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: ElevatedButton(
                                    onPressed: () => {_incrementCounterA(1)},
                                    child: const Text(
                                      " +1 ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff44AF69),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ), //RaisedButton
                                ),
                              ),
                              Flexible(
                                child: ButtonTheme(
                                  height: MediaQuery.of(context).size.height *
                                      0.030,
                                  child: ElevatedButton(
                                    onPressed: () => {_incrementCounterA(1)},
                                    child: const Text(
                                      " +1 ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff44AF69),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ), //RaisedButton
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: ButtonTheme(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: ElevatedButton(
                                    onPressed: () => {_incrementCounterA(1)},
                                    child: const Text(
                                      "    zerar    ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff44AF69),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.height * .4,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            );
          }),
        ));
  }
}
