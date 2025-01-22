import 'package:bas_flut/util/todo_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: const Text('TO DO'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: const [
          TodoTile(),
        ],
      ),
    );
  }
}
