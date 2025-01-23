import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade400,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ],
        ),
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
      ),
    );
  }
}


