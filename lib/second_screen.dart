import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ValueNotifier<bool> isDarkMode = ValueNotifier(false);

class SecondScreen extends HookWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useListenable(isDarkMode);
    return Scaffold(
      backgroundColor: isDarkMode.value ? Colors.grey[900] : Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: isDarkMode.value ? Colors.grey : Colors.blueGrey,
        title: const Text("Hooks - Second Screen"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            isDarkMode.value = !isDarkMode.value;
          },
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            backgroundColor: isDarkMode.value ? Colors.grey : Colors.blueGrey,
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
