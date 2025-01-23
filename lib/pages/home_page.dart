import 'package:bas_flut/util/dialog_box.dart';
import 'package:bas_flut/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // text controller
  final _controller = TextEditingController();

  // List of Todo tasks
  List toDoList = [
    [ "Buy a tin of milk", false ],
    [ "Record a tutorial", false ],
  ];

  // Checkbox was checked
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      // Update the state of the checkbox
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // create new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox( controller: _controller);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('TO DO App'),
        surfaceTintColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[500],
        foregroundColor: Colors.white,
        onPressed: createNewTask,
        child: Icon(Icons.add)
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            isCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
