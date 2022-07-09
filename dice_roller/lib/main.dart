import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice (){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {

     return Center(
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Expanded(
             child: OutlinedButton(
               onPressed: () {
                 rollDice();

               },
               child: Image.asset('images/dice$leftDiceNumber.png'),
             ),
           ),
           Expanded(
             child: OutlinedButton(
               onPressed: () {
                 rollDice();
               },
               child: Image.asset('images/dice$rightDiceNumber.png'),
             ),
           ),
         ],
       ),
     );
   }
  }

