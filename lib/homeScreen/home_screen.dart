import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truco_points/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: TextoJogadores(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 80,
                ),
                child: buttons2(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: buttons4(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: buttons6(),
              ),
            ],
          ),
        ));
  }
}
