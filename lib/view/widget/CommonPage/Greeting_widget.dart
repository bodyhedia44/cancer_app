import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget(
      {Key? key, required this.greeting, required this.message})
      : super(key: key);
  final String greeting;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.login_rounded,
          size: 100,
          color: Color.fromARGB(255, 82, 80, 80),
        ),
        const SizedBox(height: 30),
        const Text(
          'Hello Again!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 82, 80, 80),
            fontSize: 30,
          ),
        ),
        const Text(
          'Welcome back, you\'ve been missed!',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 82, 80, 80),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
