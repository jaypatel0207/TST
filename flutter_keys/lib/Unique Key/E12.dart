import 'package:flutter/material.dart';
import 'package:flutter_keys/customeAppBar.dart';

class E12 extends StatefulWidget {
  const E12({super.key});

  @override
  State<E12> createState() => _E12State();
}

class _E12State extends State<E12> {
  final List<int> _counters = [0, 0, 0];

  void _increamentCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: ListView(
          children: _counters.asMap().entries.map((entry) {
            int index = entry.key;
            int counter = entry.value;
            return CounterWidget(
              key: UniqueKey(), // Ensure each CounterWidget has a unique key
              counter: counter,
              onIncrement: () => _increamentCounter(index),
            );
          }).toList(),
        ));
  }
}

class CounterWidget extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const CounterWidget(
      {required Key key, required this.counter, required this.onIncrement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Counter: $counter'),
      trailing: IconButton(
        icon: const Icon(Icons.add),
        onPressed: onIncrement,
      ),
    );
  }
}
