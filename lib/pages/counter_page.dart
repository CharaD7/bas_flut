import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();

}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    // setState rebuilds the Widget
    setState(() {
      _counter++;
    });
  }

  //UI (user interface for interaction)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display text
            Text("You pushed the button this many times: "),

            // counter value
            Text(_counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
            
            // button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!")
            ),
          ],
        ),
      ),
    );
  }
}


