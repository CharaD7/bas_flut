import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            // Checkbox
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),

            // Text
            Text(
              'Buy milk',
              style: const TextStyle(
                fontSize: 18.0,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.red[500],
              blurRadius: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}


