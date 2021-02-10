import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(

   MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.blue,
       appBar: AppBar(
        title: Text('Random Dice'),
       ),
       body: MyApp(),
    ),
   ),

  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNUmber =2;
  int rand;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                 setState(() {
                   int leftRand = Random().nextInt(6)+1;
                   leftDiceNumber = leftRand;
                   int rand = Random().nextInt(6)+1;
                   rightDiceNUmber = rand;
                 });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: (){
                setState(() {
                  int leftRand = Random().nextInt(6)+1;
                  leftDiceNumber = leftRand;
                  int rand = Random().nextInt(6)+1;
                  rightDiceNUmber = rand;
                });
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNUmber.png'),
                ),
              ),
            ),
            ),
          ],

        ),
      ),
    );
  }
}






