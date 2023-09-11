import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailEditingController = TextEditingController();
    TextEditingController passwordEditingController = TextEditingController();

    void _loginUser() {
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
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
                _loginUser();
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text("No account? Register now!"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPage()),
                );
              },
              child: Text("Forgot Password"),
            ),
          ],
        ),
      ),
    );
  }
}
