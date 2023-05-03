import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        backgroundColor: const Color.fromARGB(255, 154, 36, 175),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: const Text(
            'hi',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 174, 90, 84),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
