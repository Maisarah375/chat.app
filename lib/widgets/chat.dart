import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Chat page"),),
    body: Column(
      children: [

        Expanded(
        child: ListView.builder(
          itemCount: _messages.length,
          itemBuilder: (context,index) {
            return Card(
              child: ListTile(
                title: Text(_messages[index]["message"]!),
                subtitle: Text(
                    "${_messages[index]["sender"]} ${_messages[index]["dt"]}"),
              ),
            );
          })

    ),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child:Row(
    children: [
      Expanded(child:TextField(
        decoration: InputDecoration(hintText: "Enter message"),)),
      IconButton(onPressed:(){}, icon: Icon(Icons.send))
    ],
    ),
        )
          ],

        ),
    );
  }
}
