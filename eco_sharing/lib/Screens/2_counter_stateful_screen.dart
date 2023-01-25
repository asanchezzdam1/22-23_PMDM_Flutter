import 'package:flutter/material.dart';

class CounterStatefulScreen extends StatefulWidget {
  const CounterStatefulScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<StatefulWidget> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Center miElementoCentrado = Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Número de clicks',
          style: TextStyle(color: Colors.amber, fontSize: 25),
        ),
        Text('$counter',
            style: const TextStyle(color: Colors.amber, fontSize: 30))
      ],
    ));

    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: const Text('Eco Sharing'),
        ),
        body: miElementoCentrado,
        floatingActionButton: CustomFloatingActions(
          increaseFn: increase,
          descreaseFn: decrease,
          resetFn: reset,
        ));
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.descreaseFn,
      required this.resetFn});

  final Function increaseFn;
  final Function descreaseFn;
  final Function resetFn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => increaseFn()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_outlined),
            onPressed: () => resetFn()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => descreaseFn())
      ],
    );
  }
}
