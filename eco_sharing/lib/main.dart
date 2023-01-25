import 'package:eco_sharing/Screens/3_row_col_MQ_screen.dart';
import 'package:eco_sharing/Screens/4_page_view_screen.dart';
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
      home: PageViewScreen(),
    );
  }
}
