import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  String textClicksCounter = "Clicks";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter Functions"),
          leading: const Icon( Icons.home_rounded ),
          actions: [
            IconButton(
              icon: const Icon( Icons.refresh_rounded ),
              onPressed: (){
                setState(() {
                  clickCounter = 0;
                });
              }
            ),
          ],
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
        floatingActionButton: 
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              FloatingActionButton(
                shape: const StadiumBorder(),
                onPressed: () {

                  clickCounter += 1;
                  textClicksCounter = ( clickCounter == 1 ) ? "Click" : "Clicks";
                  setState(() {}); //Para que se vean los cambios reflejados en pantalla
                  
                },
                child: const Icon( Icons.plus_one ),
              ),

              const SizedBox(height: 10),

              FloatingActionButton(
                shape: const StadiumBorder(),
                onPressed: () {

                  clickCounter -= 1;
                  textClicksCounter = ( clickCounter == 1 ) ? "Click" : "Clicks";
                  setState(() {}); //Para que se vean los cambios reflejados en pantalla
                  
                },
                child: const Icon( Icons.exposure_minus_1 ),
              ),

            ],
          )
    );

  }
}