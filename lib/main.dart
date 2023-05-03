import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/LoginPage.dart';
import 'package:flutter_catalog/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: "/Home",
      routes: {
        "/": (context) => const HomePage(),
        "/Home": (context) => const HomePage(),
        "/Login": (context) => const LoginPage()
      },
    );
  }
}
