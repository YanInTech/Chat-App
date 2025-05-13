import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  final String username;
  const ChatPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username'),
        actions: [
          IconButton(
              onPressed: () {
                //TODO: Navigate back to LoginPage on logout
                
                Navigator.pop(context);
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatBubble(
                    alignment: index % 2 == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    message: "Hello, this is Pooja!");
              }
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
