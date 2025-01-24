import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference a box
  final _newBox = Hive.box("newBox");

  // run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      [ "Scrape Meqasa", false ],
      [ "Record a tutorial", false ],
    ];
  }

  // fetch data from the database
  void fetchData() {
    toDoList = _newBox.get("TODOLIST");
  }

  
}
