import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  String textClicksCounter = "Clicks";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter Screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Text(textClicksCounter, style: const TextStyle(fontSize: 20))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            clickCounter += 1;
            textClicksCounter = ( clickCounter == 1 ) ? "Click" : "Clicks";
            setState(() {}); //Para que se vean los cambios reflejados en pantalla
            
          },
          child: const Icon( Icons.plus_one ),
        ),
    );

  }
}