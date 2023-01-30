import 'package:eco_sharing/Screens/2_counter_stateful_screen.dart';
import 'package:eco_sharing/Screens/3_row_col_MQ_screen.dart';
import 'package:eco_sharing/Screens/4_page_view_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreen();
}

class _BottomNavScreen extends State<BottomNavScreen> {
  int bottomIndex = 1;

  List<Widget> pantallas = [
    const CounterStatefulScreen(),
    const RowColMQScreen(),
    const Center(child: Text('Tercera'))
  ];

  void _bottomNavTap(int index) {
    setState(() {
      bottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar'),
      ),
      body: pantallas.elementAt(bottomIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Test_1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: 'Test_2'),
        ],
        currentIndex: bottomIndex,
        onTap: _bottomNavTap,
      ),
    );
  }
}
