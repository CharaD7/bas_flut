import 'package:flutter/material.dart';

class UButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  UButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: text == "Save" ? Colors.red[500] : Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(text),
    );
  }
}


