import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Checkbox(
              value: isCompleted,
              onChanged: onChanged,
            ),
            Text(
              taskName,
              style: TextStyle(
                fontSize: 18.0,
                decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


