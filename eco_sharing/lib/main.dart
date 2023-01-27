import 'package:eco_sharing/Screens/5_page_view_enlazados_screen.dart';
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
      home: PageViewEnlazadosScreen(),
    );
  }
}
