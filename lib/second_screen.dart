import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blueGrey,
        title: const Text("Hooks - Second Screen"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            backgroundColor: Colors.blueGrey,
          ),
          child: const Text(
            "Change Theme",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
