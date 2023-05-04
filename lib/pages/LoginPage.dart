import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changed = false;

  final _formKey = GlobalKey<FormState>();
  moveToHomePage() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changed = true;
      });
      await Future.delayed(const Duration(milliseconds: 500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/Login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      maxLength: 50,
                      decoration: const InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username cant be empty';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Enter Password', labelText: 'Password'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username cant be empty';
                        } else if (value.length < 6) {
                          return "Password should not be smaller than 6";
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(changed ? 50 : 8),
              child: InkWell(
                splashColor: const Color.fromARGB(255, 106, 178, 236),
                onTap: () {
                  moveToHomePage();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  alignment: Alignment.center,
                  height: 50,
                  width: changed ? 50 : 150,
                  child: changed
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
