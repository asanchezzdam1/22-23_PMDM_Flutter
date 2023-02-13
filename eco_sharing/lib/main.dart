import 'package:eco_sharing/Screens/10_form_db_screen.dart';
import 'package:eco_sharing/Themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcoSharing());
}

class EcoSharing extends StatelessWidget {
  const EcoSharing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormDBScreen(),
    );
  }
}
