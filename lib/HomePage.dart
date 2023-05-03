import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: const Text('hi'),
        ),
      ),
    );
  }
}
