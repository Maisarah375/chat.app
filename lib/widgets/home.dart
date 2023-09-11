import 'package:flutter/material.dart';
import 'package:login/widgets/chat.dart';

class Homepage extends StatelessWidget {
  var staffs=[
    {"name":"Hakim","departmentA":"I.T"},
    {"name":"Alif","departmentB":"I.T"},
    {"name":"Ahmad","departmentC":"I.T"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Home Page"),actions: [IconButton(onPressed: (){},
        icon: Icon(Icons.account_circle),)],),

      body:ListView.builder(
        itemCount:staffs.length,
        itemBuilder: (context,index){
          return Card(
          child: ListTile(
            title: Text(staffs[index]["name"]!),
            subtitle: Text(staffs[index]["name"]!),
            trailing: Icon(Icons.chevron_right),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
            }
          )

          );
        })
    );
  }
}
