import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/Login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          const Text(
            'welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Enter Password', labelText: 'Password'),
                )
              ],
            ),
          ),
          ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              print("hi");
            },
          )
        ],
      ),
    );
  }
}
