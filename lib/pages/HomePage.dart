import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/utils/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        title: const Text("App Bar"),
        backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      ),
      drawer: const MyDrawer(),
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
