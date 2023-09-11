import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailEditingController,
              decoration: InputDecoration(hintText: "Enter email"),
            ),
            TextField(
              controller: passwordEditingController,
              decoration: InputDecoration(hintText: "Enter password"),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                _registerUser();
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }

  void _registerUser() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailEditingController.text.trim(),
        password: passwordEditingController.text,
      );

      if (userCredential.user != null) {
        print("Successfully registered");
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
