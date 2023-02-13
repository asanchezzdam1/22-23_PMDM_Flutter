import 'package:eco_sharing/Themes/light_theme.dart';
import 'package:flutter/material.dart';

class CounterStatelessScreen extends StatelessWidget {
  const CounterStatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;

    Center miElementoCentrado = Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Número de clicks',
          style: TextStyle(color: Colors.amber, fontSize: 25),
        ),
        Text('$counter',
            style: const TextStyle(color: Colors.amber, fontSize: 30))
      ],
    ));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo'),
        ),
        body: miElementoCentrado,
        floatingActionButton: FloatingActionButton(
          backgroundColor: CustomLightTheme.primary,
          onPressed: (() {
            counter++;
            print('Hola mundo');
          }),
          child: const Icon(Icons.add),
        ));
  }
}
