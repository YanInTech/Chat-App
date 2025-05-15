import 'dart:js';

import 'package:chat_app/chat_page.dart';
import 'package:chat_app/utils/spaces.dart';
import 'package:chat_app/utils/textfield_styles.dart';
import 'package:chat_app/widgets/login_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formkey = GlobalKey<FormState>();

  // TODO: Validate email and username values
  void loginUser(context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);

      //TODO: Add Named Routes insteadd of anonymous routes
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: '${userNameController.text}');

      print('login successful!');
    } else {
      print('not successful!');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

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

            //TODO: Add Username & Password text fields

            Form(
              key: _formkey,
              child: Column(
                children: [
                  LoginTextField(
                    hintText: 'Enter your username',
                    validator: (value) {
                      if (value != null &&
                          value.isNotEmpty &&
                          value.length < 5) {
                        return "Your username should be more than 5 characters";
                      } else if (value != null && value.isEmpty) {
                        return "Please type your username";
                      }
                      return null;
                    },
                    controller: userNameController,
                  ),
                  verticalSpacing(24),
                  LoginTextField(
                    hasAsterisks: true,
                    hintText: 'Enter your password',
                    controller: passwordController,
                  ),
                ],
              ),
            ),
            verticalSpacing(24),
            ElevatedButton(
                onPressed: () {
                  loginUser(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                )),
            // TODO: Add the supporting text by final design
            InkWell(
              splashColor: Colors.red,
              onDoubleTap: () {
                print('double tapped!');
              },
              onLongPress: () {
                print('onLongpress');
              },
              onTap: () {
                // TODO: Navigate to browser
                print('Link clicked!');
              },
              child: Column(
                children: [
                  Text('Find us on'),
                  Text('https://google.com'),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
