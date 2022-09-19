import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Dice"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: Dice(),
    ));
  }
}

class Dice extends StatefulWidget {
  Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var dicenumber1 = Random().nextInt(5);

  var dicenumber2 = Random().nextInt(5);

  void setDicenumber() {
    setState(() {
      dicenumber1 = Random().nextInt(5);
      dicenumber2 = Random().nextInt(5);
    });
  }

  Expanded createExpanded(int dicenumber) {
    return Expanded(
      child: TextButton(
        onPressed: setDicenumber,
        child: Image.asset('images/$dicenumber.PNG'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(children: [
          createExpanded(dicenumber1),
          createExpanded(dicenumber2),
        ]),
      ),
    );
  }
}
