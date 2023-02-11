import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8BallPage());
}

class Magic8BallPage extends StatefulWidget {

  const Magic8BallPage({Key? key}) : super(key: key);

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {

  int currentImage=1;

  void handlePress(){
    setState(() {
      currentImage = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Magic 8 Ball')),
        backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.teal,
        body: Center(
          child: Row(children: [Expanded(child: TextButton(onPressed: handlePress,child: Image.asset('balls/ball$currentImage.png')),)]),
        ),
      ),
    );
  }
}
