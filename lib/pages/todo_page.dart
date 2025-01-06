import 'package:flutter/material.dart';


class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controller to get access to what the user typed
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // textfield
              TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                  hintText: 'Enter your todo item',
                ),
              ),

              // button
              ElevatedButton(
                onPressed: () {
                  // print what the user typed
                  print(_textEditingController.text);
                },
                child: const Text('Submit'),
              )
            ]
          )
        )
      )
    );
  }
}
