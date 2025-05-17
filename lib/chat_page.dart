import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
      author: Author(userName: 'hakdog'),
      createdAt: 2132211242,
      id: '1',
      text: 'First text'),
    ChatMessageEntity(
      author: Author(userName: 'hakdog'),
      createdAt: 2132211442,
      id: '1',
      text: 'Second text',
      imageUrl: 'https://th.bing.com/th/id/R.73e9d869b7824956881985300bad12ea?rik=HECJEhmoQWhz9A&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fniX%2fo77%2fniXo7745T.png&ehk=STYDZV4xsoPe%2f2NBzJlYayG8lIemvAO3Hac%2fK9N13oY%3d&risl=&pid=ImgRaw&r=0'),
    ChatMessageEntity(
      author: Author(userName: 'oki'),
      createdAt: 2132211242,
      id: '1',
      text: 'Third text'),
    
  ];

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
        actions: [
          IconButton(
              onPressed: () {
                //TODO: Navigate back to LoginPage on logout

                Navigator.pushReplacementNamed(context, '/');
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: _messages[index].author.userName == 'hakdog'
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      entity: _messages[index]);
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
