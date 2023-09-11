import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Forget Password Page"),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(hintText: 'Enter email'),controller:emailEditingController),
              ElevatedButton(onPressed: () {}, child: Text("Register")),


            ],
          ),
        )
    );
  }
}