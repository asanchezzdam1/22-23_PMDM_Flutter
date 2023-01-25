import 'package:flutter/material.dart';

class RowColMQScreen extends StatelessWidget {
  const RowColMQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: const Text('Numeros'),
      backgroundColor: Colors.amber,
      elevation: 20,
      shadowColor: Colors.black,
    );

    double tamano =
        (MediaQuery.of(context).size.height - appBar.preferredSize.height) / 3;

    return Scaffold(
      appBar: appBar,
      body: Column(children: [
        Row(children: [
          creaBloque(color: Colors.lightBlue, text: '1', height: tamano),
          creaBloque(color: Colors.lightGreen, text: '2', height: tamano),
          creaBloque(color: Colors.red, text: '3', height: tamano)
        ]),
        Row(children: [
          creaBloque(color: Colors.red, text: '4', height: tamano),
          creaBloque(color: Colors.lightBlue, text: '5', height: tamano),
          creaBloque(color: Colors.lightGreen, text: '6', height: tamano)
        ]),
        Row(children: [
          creaBloque(color: Colors.lightGreen, text: '7', height: tamano),
          creaBloque(color: Colors.red, text: '8', height: tamano),
          creaBloque(color: Colors.lightBlue, text: '9', height: tamano)
        ]),
      ]),
    );
  }

  Expanded creaBloque(
      {required Color color, required String text, required double height}) {
    return Expanded(
        child: Container(
            color: color,
            height: height,
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
            )));
  }
}
