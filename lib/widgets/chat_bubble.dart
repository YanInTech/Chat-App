import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const ChatBubble({super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$message',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Image.network(
              'https://th.bing.com/th/id/R.73e9d869b7824956881985300bad12ea?rik=HECJEhmoQWhz9A&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fniX%2fo77%2fniXo7745T.png&ehk=STYDZV4xsoPe%2f2NBzJlYayG8lIemvAO3Hac%2fK9N13oY%3d&risl=&pid=ImgRaw&r=0',
              height: 200,
            )
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12))),
      ),
    );
  }
}