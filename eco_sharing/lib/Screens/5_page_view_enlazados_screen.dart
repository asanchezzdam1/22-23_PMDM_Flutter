import 'package:flutter/material.dart';

class PageViewEnlazadosScreen extends StatelessWidget {
  const PageViewEnlazadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View Enlazados'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(initialPage: 1),
        children: [
          PageView(
            controller: PageController(),
            children: [
              creaContenedor(color: Colors.red, texto: '1'),
              creaContenedor(color: Colors.blue, texto: '2'),
              creaContenedor(color: Colors.pink, texto: '3'),
            ],
          ),
          PageView(
            controller: PageController(initialPage: 1),
            children: [
              creaContenedor(color: Colors.grey, texto: '4'),
              creaContenedor(color: Colors.orange, texto: '5'),
              creaContenedor(color: Colors.brown, texto: '6'),
            ],
          ),
          PageView(
            controller: PageController(initialPage: 2),
            children: [
              creaContenedor(color: Colors.red, texto: '7'),
              creaContenedor(color: Colors.blue, texto: '8'),
              creaContenedor(color: Colors.pink, texto: '9'),
            ],
          )
        ],
      ),
    );
  }

  Widget creaContenedor({required Color color, required String texto}) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(texto, style: const TextStyle(fontSize: 100)),
    );
  }
}
