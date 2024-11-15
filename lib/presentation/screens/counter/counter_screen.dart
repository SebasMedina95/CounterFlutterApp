import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter Screen"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('0', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Text("Cantidad de Clicks", style: TextStyle(fontSize: 20))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon( Icons.plus_one ),
        ),
    );

  }

}