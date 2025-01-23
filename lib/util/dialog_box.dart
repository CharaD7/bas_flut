import 'package:bas_flut/util/u_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red[50],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                hintText: "Add a new task",
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UButton(text: "Save", onPressed: () => { print("Clicked Save")}),

                const SizedBox( width: 10,),

                UButton(text: "Cancel", onPressed: () => { print("Clicked Cancel")}),
              ],
              )
          ],
        )
      )
    );
  }
}
