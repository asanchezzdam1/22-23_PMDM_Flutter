import 'package:flutter/material.dart';

class SnippetTestScreen extends StatelessWidget {
  SnippetTestScreen({super.key});

  final lista = ['Ejemplo 1', 'asdfasdf', 'asdfasdfasdf', 'sdfafsdfsdf'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...lista
              .map(
                (e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    leading: const Icon(Icons.alarm)),
              )
              .toList(),
        ],
      ),
    );
  }
}
