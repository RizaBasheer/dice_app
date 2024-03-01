import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNo=1;
  int diceNo2=2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(child: const Text('Dice')),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap:() {
                  print('Welcome');
                  setState((){
                    diceNo2=Random().nextInt(6)+1;
                  });
                  },
                child: Image.asset('image/dice$diceNo.jpg')),
              SizedBox(width: 30,),
              GestureDetector(
                onTap: () {
                  print('Done');
                  print(diceNo);
                  setState((){
                    diceNo=Random().nextInt(6)+1;
                  });
                  },
                  child: Image.asset('image/dice$diceNo2.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}
