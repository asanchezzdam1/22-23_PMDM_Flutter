import 'package:eco_sharing/Screens/1_counter_stateless_screen.dart';
import 'package:eco_sharing/Screens/2_counter_stateful_screen.dart';
import 'package:eco_sharing/Screens/3_row_col_MQ_screen.dart';
import 'package:eco_sharing/Screens/3_row_col_screen.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Eco Sharing'),
          backgroundColor: Colors.amber,
          elevation: 20,
          shadowColor: Colors.black),
      body: PageView(
        controller: PageController(initialPage: 2),
        scrollDirection: Axis.vertical,
        children: const [
          CounterStatelessScreen(),
          CounterStatefulScreen(),
          RowColScreen(),
          RowColMQScreen()
        ],
      ),
    );
  }
}
