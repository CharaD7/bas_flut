import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  Function(bool?)? onChanged;

  TodoTile({
    super.key,
    this.title = '',
    this.isChecked = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
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
            // Checkbox
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),

            // Text
            const Text(
              'Buy milk',
              style: TextStyle(
                fontSize: 18.0,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


