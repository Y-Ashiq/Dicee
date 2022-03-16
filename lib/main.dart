import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue[300],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  ///we can use this function if we need the two dices change together
  // int ran() {
  //   Random rnd = new Random();
  //   int min = 1;
  //   int max = 7;
  //   int r = min + rnd.nextInt(max - min);
  //   return r;
  // or r = Random.nextInt(6)+1;
  // }

  int r2 = 1;
  int l2 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      //ran();
                      r2 = Random().nextInt(6) + 1;
                    });
                    print('pressed');
                  },
                  child: Image.asset('images/dice$r2.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      // ran();
                      l2 = Random().nextInt(6) + 1;
                    });

                    print('pressed');
                  },
                  child: Image.asset('images/dice$l2.png'))),
        ],
      ),
    );
  }
}
