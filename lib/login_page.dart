import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button clicked');
          },
        ),
        // TODO: Add the text and image from the design

        body: Column(
          children: [
            Text(
              'Let\'s sign you in!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
            Text(
              'Welcome back! \n You\'ve been missed!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueGrey),
            ),
            Image.network(
              'https://th.bing.com/th/id/R.73e9d869b7824956881985300bad12ea?rik=HECJEhmoQWhz9A&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fniX%2fo77%2fniXo7745T.png&ehk=STYDZV4xsoPe%2f2NBzJlYayG8lIemvAO3Hac%2fK9N13oY%3d&risl=&pid=ImgRaw&r=0',
              height: 200,
            ),
            Container(
              height: 150,
              width: 150,
              // child: FlutterLogo(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                      'https://th.bing.com/th/id/R.73e9d869b7824956881985300bad12ea?rik=HECJEhmoQWhz9A&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fniX%2fo77%2fniXo7745T.png&ehk=STYDZV4xsoPe%2f2NBzJlYayG8lIemvAO3Hac%2fK9N13oY%3d&risl=&pid=ImgRaw&r=0',),
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)),
            )
          ],
        )
      );
  }
}
