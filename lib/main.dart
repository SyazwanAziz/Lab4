import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _DiceRollApp createState() => _DiceRollApp();
}

class _DiceRollApp extends State<Home> {
  int nextImage = 1;
  int nextImage2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[900],
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[900],
          title: Center(child: Text('Dice Rolling App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/diceeLogo.png'),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/dice$nextImage.png'),
                  ),
                  Container(
                    child: Image.asset('assets/dice$nextImage2.png'),
                  ),
                ]),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nextImage = Random().nextInt(6) + 1;
                  nextImage2 = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll the dice'),
            ),
          ],
        ),
      ),
    );
  }
}
