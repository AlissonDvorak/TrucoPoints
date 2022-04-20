// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
import 'package:truco_points/widgets/widgets.dart';

// ignore: camel_case_types
class GanhadorScreen extends StatelessWidget {
  final String nomeum;
  final String nomeDois;
  final int ptsA;
  final int ptsB;

  GanhadorScreen(
    this.nomeum,
    this.nomeDois,
    this.ptsA,
    this.ptsB,
  );

  GlobalKey previewContainer = GlobalKey();
  int originalSize = 800;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: RepaintBoundary(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    RepaintBoundary(
                      key: previewContainer,
                      child: CardWidget(
                          nomeum: nomeum,
                          nomeDois: nomeDois,
                          ptsA: ptsA,
                          ptsB: ptsB),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const buttonsNovo(),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: BtShare(
                                previewContainer: previewContainer,
                                originalSize: originalSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BtShare extends StatelessWidget {
  const BtShare({
    Key? key,
    required this.previewContainer,
    required this.originalSize,
  }) : super(key: key);

  final GlobalKey<State<StatefulWidget>> previewContainer;
  final int originalSize;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        onPressed: () => {
          ShareFilesAndScreenshotWidgets().shareScreenshot(
              previewContainer, originalSize, "Score", "score.png", "image/png",
              text: "")
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: const Icon(
          Icons.send,
          size: 50,
          color: Color(0xffFFFFFF),
        ),
        color: const Color(0xff44AF69),
      ), //RaisedButton
    );
  }
}
