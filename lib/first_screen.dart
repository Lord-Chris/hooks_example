import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'second_screen.dart';

class FirstScreen extends HookWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final buttonIsVisible = useListenableSelector(
        controller, () => controller.text == "Flutter Hooks");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Hooks - First Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
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
            child: Visibility(
              visible: buttonIsVisible,
              child: Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SecondScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
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
          ),
        ],
      ),
    );
  }
}
