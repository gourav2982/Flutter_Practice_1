import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/LoginPage.dart';
import 'package:flutter_catalog/pages/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/Login",
      routes: {
        "/": (context) => const HomePage(),
        "/Home": (context) => const HomePage(),
        "/Login": (context) => const LoginPage()
      },
    );
  }
}
