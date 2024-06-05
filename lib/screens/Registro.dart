import 'package:app_streming_pro/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Registro());
}

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registro",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo(context) {
  return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 96, 143, 114)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Correo(),
          Contrasenia(),
          BotonRegistro(context),
          BotonInicio(context),
        ],
      ));
}

Widget Correo() {
  return Container(
      child: TextField(
    controller: _correo,
    decoration: const InputDecoration(
        hintText: "Ingresar el correo electronico",
        fillColor: Color.fromARGB(255, 116, 116, 116),
        filled: true),
  ));
}

Widget Contrasenia() {
  return Container(
      child: TextField(
    controller: _contrasenia,
    decoration: const InputDecoration(
        hintText: "Ingresar la contraseña",
        fillColor: Color.fromARGB(255, 116, 116, 116),
        filled: true),
  ));
}

final TextEditingController _correo = TextEditingController();
final TextEditingController _contrasenia = TextEditingController();

Widget BotonRegistro(context) {
  return (ElevatedButton(
    onPressed: () {
      alerta(context);
    },
    child: Text("Registrarse"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
    ),
  ));
}

void alerta(context) {
  showDialog(
      context: context,
      builder: (context) {
        return (AlertDialog(
          title: Text("Se registro Correctamente"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"))
          ],
        ));
      });
}

Widget BotonInicio(context) {
  return (ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login()));
    },
    child: Text("Iniciar Sesion"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
    ),
  ));
}