import 'package:flutter/material.dart';

import 'address_list_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then(
      (_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: ((context) => const TodoListScreen())),
      ),
    );

    return const Scaffold(
      body: Center(child: Text("Address App")),
    );
  }
}
