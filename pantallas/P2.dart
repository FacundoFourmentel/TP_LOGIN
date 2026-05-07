import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda pantalla"),
      ),

      body: const Center(
        child: Text(
          "Ingreso a la aplicación exitoso",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
