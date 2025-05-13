import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void loginUser() {
    print('login successful!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // TODO: Add the text and image from the design
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Let\'s sign you in!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
            Text(
              'Welcome back! \n You\'ve been missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blueGrey),
            ),
            Image.network(
              'https://th.bing.com/th/id/R.73e9d869b7824956881985300bad12ea?rik=HECJEhmoQWhz9A&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fniX%2fo77%2fniXo7745T.png&ehk=STYDZV4xsoPe%2f2NBzJlYayG8lIemvAO3Hac%2fK9N13oY%3d&risl=&pid=ImgRaw&r=0',
              height: 200,
            ),

            ElevatedButton(
                onPressed: loginUser,
                child: Text(
                  'Click me!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
            TextButton(
                onPressed: () {
                  print('Pressed on the URL!');
                },
                child: Text('https://google.com')),
            // TODO: Add Login Button

            // TODO: Add URL Text Button
          ],
        ),
      ),
    ));
  }
}
