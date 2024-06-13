import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceScreenState();
  }
}

class _DiceScreenState extends State<DiceScreen> {
  var activeImage = "assets/images/dice1.png";

  void rollDice() {
    setState(() {
      var number = Random().nextInt(6) + 1;
      activeImage = "assets/images/dice$number.png";

    
    });
     
    if(activeImage == "assets/images/dice6.png"){
      print('You Won');
  

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 156, 235),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 450,
            child: Image.asset(activeImage),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: rollDice,
            icon: const Icon(Icons.refresh_outlined),
            label: const Text(
              'Roll Dice',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          )
        ],
      ),
    );
  }
}
