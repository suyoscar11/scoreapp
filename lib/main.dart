// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Suyoscar11());
}

class Suyoscar11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Deadliest Game Ever',
        home: ScoreHome());
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int _number = 0;

  void increaseNumber() {
    setState(() {
      _number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      _number--;
    });
  }

  void resetNumber() {
    setState(() {
      _number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tmro MBBS ma naam niskini'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
            child: Text('Chance is',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))),
        Text('$_number',
            style: TextStyle(
                color: Colors.pink, fontSize: 85, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
              color: Colors.green,
              child: const Text('Increase',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onPressed: increaseNumber),
          const SizedBox(width: 25),
          RaisedButton(
              color: Colors.red,
              child: const Text('Decrease',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onPressed: decreaseNumber)
        ])
      ]),
    );
  }
}
