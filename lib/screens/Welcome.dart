import 'package:flutter/material.dart';
import 'Login.dart';
import 'Registro.dart';

void main() {
  runApp(Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome",
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
        title: const Text('Welcome'),
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
        children: <Widget>[BotonInicio(context), BotonRegistro(context)],
      ));
}

Widget BotonInicio(context) {
  return (ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login()));
    },
    child: Text("Iniciar Sesión"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
    ),
  ));
}

Widget BotonRegistro(context) {
  return (ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Registro()));
    },
    child: Text("Registrarse"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 8, 8, 8),
    ),
  ));
}