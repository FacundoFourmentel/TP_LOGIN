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

        textoEstado = "Debe completar todos los campos";

      } else if (usuarioIngresado == "admin" &&
          claveIngresada == "1234") {

        textoEstado = "Acceso correcto";

        Future.delayed(const Duration(seconds: 1), () {

          context.go('/P2');

        });

      } else {

        textoEstado = "Datos incorrectos";
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio de sesión"),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            TextField(
              controller: controladorUsuario,

              decoration: const InputDecoration(
                labelText: "Nombre de usuario",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 18),

            TextField(
              controller: controladorClave,
              obscureText: true,

              decoration: const InputDecoration(
                labelText: "Clave",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 18),

            ElevatedButton(
              onPressed: comprobarDatos,
              child: const Text("Entrar"),
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
