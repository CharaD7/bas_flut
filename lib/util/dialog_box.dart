import 'package:bas_flut/util/u_button.dart';
import 'package:bas_flut/util/u_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red[50],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
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
