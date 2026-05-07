import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class P1 extends StatefulWidget {
  const P1({super.key});

  @override
  State<P1> createState() => _P1State();
}

class _P1State extends State<P1> {

  final TextEditingController controladorUsuario = TextEditingController();
  final TextEditingController controladorClave = TextEditingController();

  String textoEstado = "";

  void comprobarDatos() {

    String usuarioIngresado = controladorUsuario.text;
    String claveIngresada = controladorClave.text;

    setState(() {

      if (usuarioIngresado.isEmpty || claveIngresada.isEmpty) {

        textoEstado = "complete todos los campos obligatorios";

      } else if (usuarioIngresado == "cuenta" &&
          claveIngresada == "LaMejorContraseña") {

        textoEstado = "Bienvenido";

        Future.delayed(const Duration(seconds: 1), () {

          context.go('/P2');

        });

      } else {

        textoEstado = "Ha habido un problema con el ingreso de datos";
      }
    });
  }

  @override
  
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            TextField(
              controller: controladorUsuario,

              decoration: const InputDecoration(
                labelText: "Usuario",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 18),

            TextField(
              controller: controladorClave,
              obscureText: true,

              decoration: const InputDecoration(
                labelText: "Contraseña",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 18),

            ElevatedButton(
              onPressed: comprobarDatos,
              child: const Text("Ingrese"),
            ),

            const SizedBox(height: 20),

            Text(
              textoEstado,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
