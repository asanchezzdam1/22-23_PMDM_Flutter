import 'package:flutter/material.dart';

class RowColScreen extends StatelessWidget {
  const RowColScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numeros'),
        backgroundColor: Colors.amber,
        elevation: 20,
        shadowColor: Colors.black,
      ),
      body: Column(children: [
        Row(children: [
          creaBloque(color: Colors.lightBlue, text: '1'),
          creaBloque(color: Colors.lightGreen, text: '2'),
          creaBloque(color: Colors.red, text: '3')
        ]),
        Row(children: [
          creaBloque(color: Colors.red, text: '4'),
          creaBloque(color: Colors.lightBlue, text: '5'),
          creaBloque(color: Colors.lightGreen, text: '6')
        ]),
        Row(children: [
          creaBloque(color: Colors.lightGreen, text: '7'),
          creaBloque(color: Colors.red, text: '8'),
          creaBloque(color: Colors.lightBlue, text: '9')
        ]),
      ]),
    );
  }

  Expanded creaBloque({required Color color, required String text}) {
    return Expanded(
        child: Container(
            color: color,
            padding: const EdgeInsets.all(50),
            child: Text(
              text,
              textAlign: TextAlign.center,
            )));
  }
}
