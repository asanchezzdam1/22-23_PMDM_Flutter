// import 'package:eco_sharing/Screens/counter_screen.dart';
import 'package:eco_sharing/Screens/numeros.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcoSharing());
}

class EcoSharing extends StatelessWidget {
  const EcoSharing({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Numeros(),
    );
  }
}
