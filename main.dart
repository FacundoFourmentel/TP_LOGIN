//main.dart fourmentel

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/pantalla_inicio.dart';
import 'screens/pantalla_secundaria.dart';




void main() {
  runApp(const AppLogin());
}


class AppLogin extends StatelessWidget {
  const AppLogin({super.key});


  static final GoRouter rutas = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => const PantallaInicio(),
      ),

      GoRoute(
        path: '/inicio',
        builder: (context, state) => const PantallaSecundaria(),

      ),
    ],
  );

  @override

  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: rutas,
      debugShowCheckedModeBanner: false,
    );
  }
}



import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PantallaInicio extends StatefulWidget {

  const PantallaInicio({super.key});

  @override

  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {

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
          context.go('/inicio');

        });
      } else {
        textoEstado = "Datos incorrectos";
      }
    });
  }
