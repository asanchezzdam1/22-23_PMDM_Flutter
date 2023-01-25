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
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: const Text('Eco Sharing'),
        ),
        body: miElementoCentrado,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            counter++;
            print('Hola mundo');
          }),
          child: const Icon(Icons.add),
        ));
  }
}
