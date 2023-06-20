import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('test002'),
          // backgroundColor: const Color.fromARGB(255, 0, 255, 255),
        ),
        body: const ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int changeImageLeft = 1;
  int changeImageRight = 9;
  int balance = 0;
  int colorGreen = 255;
  int colorRed = 255;
  int colorBlue = 255;
  String textChange = "جرب حظك";
  void changeImage() {
    changeImageLeft = Random().nextInt(8) + 1;
    changeImageRight = Random().nextInt(8) + 1;
    changeImageLeft == changeImageRight
        ? textChange = ' مبروك لقد نجحت'
        : textChange = "جرب حظك";
  }

  late final bool enabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          textChange,
          style: const TextStyle(
              fontSize: 42.0,
              //  fontFamily: 'Amiri',
              color: Colors.blue),
        ),
        Row(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    // borderRadius: BorderRadius.circular(21),
                    onTap: () {
                      setState(() {
                        changeImage();
                      });
                    },
                    child: Container(
                      // decoration: BoxDecoration(
                      //     color: Color.fromARGB(255, 0, colorGreen, colorBlue),
                      //     border: Border.all(
                      //       color: Color.fromARGB(255, 255, 204, 139),
                      //       width: 3,
                      //     ),
                      //     borderRadius: BorderRadius.circular(21)),
                      // padding: EdgeInsets.all(5),
                      child: Image.asset(
                        'images/image-$changeImageLeft.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                      // borderRadius: BorderRadius.circular(21),
                      onTap: () {
                        setState(() {
                          changeImage();
                        });
                      },
                      child: Container(
                          // decoration: BoxDecoration(
                          //     color: Color.fromARGB(255, 0, 255, 200),
                          //     border: Border.all(
                          //       color: Color.fromARGB(255, 255, 204, 139),
                          //       width: 3,
                          //     ),
                          //     borderRadius: BorderRadius.circular(21)),
                          // padding: EdgeInsets.all(5),
                          child: Image.asset(
                              'images/image-$changeImageRight.png'))),
                ),
              ),
            ),
          ],
        ),
        // ElevatedButton(
        //     style: OutlinedButton.styleFrom(
        //       shape: const StadiumBorder(),
        //       onSurface: Colors.black,
        //       backgroundColor: Color.fromARGB(139, 70, 204, 139),
        //     ),
        //     onPressed: () {
        //       setState(() {
        //         changeImage();
        //       });
        //     },
        //     child: const Text(
        //       'جرب حظك',
        //       style: TextStyle(fontFamily: 'Cairo', fontSize: 24),
        //     )),
      ],
    );
  }
}
