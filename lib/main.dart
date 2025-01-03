import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void menuTapped() {
      print("Menu tapped");
    }

  void logoutTapped() {
      print("Logout tapped");
    }

  void containerTapped() {
    print("Container tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
      'Home',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {logoutTapped();},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              )
            )
          ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: containerTapped,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
                ),
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                  "Mitch KOKO",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                )       
              ),
          )
        ),
      ),
    );
  }
}
