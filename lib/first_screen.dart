import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Hooks - First Screen"),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 3,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Text...",
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SecondScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  backgroundColor: Colors.blueGrey,
                ),
                child: const Text(
                  "Proceed",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
