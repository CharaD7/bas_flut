import 'package:bas_flut/data/database.dart';
import 'package:bas_flut/util/dialog_box.dart';
import 'package:bas_flut/util/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference the hive box
  late final Box _newBox;
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    super.initState();
    initBox();
  }

  // Initialize box
  void initBox() async {
    _newBox = await Hive.openBox("newBox");

    // if this is the first time ever opening the app
    if (_newBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.fetchData();
    }
  }

  // text controller
  final _controller = TextEditingController();

  // save a new task
  void onSave() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // cancel dialog box
  void onCancel() {
    Navigator.of(context).pop();
  }

  // Checkbox was checked
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      // Update the state of the checkbox
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDatabase();
  }

  // create new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: onSave,
          onCancel: onCancel,
        );
      },
    );
  }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
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
          child: const Icon(Icons.add)),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            isCompleted: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
