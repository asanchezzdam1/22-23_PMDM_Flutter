import 'package:eco_sharing/Screens/2_counter_stateful_screen.dart';
import 'package:eco_sharing/Screens/3_row_col_MQ_screen.dart';
import 'package:flutter/material.dart';

class BottomNavPageViewScreen extends StatefulWidget {
  const BottomNavPageViewScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavPageViewScreen();
}

class _BottomNavPageViewScreen extends State<BottomNavPageViewScreen> {
  int bottomIndex = 1;
  PageController pageController = PageController(initialPage: 1);

  void bottomNavTap(int index) {
    setState(() {
      bottomIndex = index;
      pageController.animateToPage(bottomIndex,
          duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom NavBar con PageView'),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
              color: Colors.redAccent,
              child: const Center(
                  child: Text('Primera',
                      style: TextStyle(fontSize: 50, color: Colors.white)))),
          Container(
              color: Colors.lightBlue,
              child: const Center(
                  child: Text('Segunda',
                      style: TextStyle(fontSize: 50, color: Colors.white)))),
          Container(
              color: Colors.black,
              child: const Center(
                  child: Text('Tercera',
                      style: TextStyle(fontSize: 50, color: Colors.white)))),
          Container(
              color: Colors.brown,
              child: const Center(
                  child: Text('Cuarta',
                      style: TextStyle(fontSize: 50, color: Colors.white)))),
          Container(
              color: Colors.pinkAccent,
              child: const Center(
                  child: Text('Quinta',
                      style: TextStyle(fontSize: 50, color: Colors.white))))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Negocio',
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Alarma',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Teléfono',
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Email',
              backgroundColor: Colors.pinkAccent)
        ],
        currentIndex: bottomIndex,
        onTap: bottomNavTap,
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
