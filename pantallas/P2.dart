import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla numero 2"),
      ),

      body: const Center(
        child: Text(
          "Perfecto, bienvenido a nuestra app",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
