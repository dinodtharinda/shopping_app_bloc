import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              
              ),
            ),
          ),
        )
      ]),
    );
  }
}
