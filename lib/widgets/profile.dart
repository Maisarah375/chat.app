import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title:Text("Profile Page"),),
        body:Padding(
          padding:const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(hintText: "Enter email"),),
              TextField(decoration: InputDecoration(hintText: "Enter password"),),
              ElevatedButton(onPressed: (){}, child: Text("Login")),
            ],
          ),

        )
    );
  }
}
