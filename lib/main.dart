import 'package:flutter/material.dart';
import 'package:hellow_world_app/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:hellow_world_app/presentation/screens/counter/counter_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Quitar la etiqueta de modo desarrollo
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.purple
        ),
        home: const CounterFunctionsScreen()
    );
  }

}
