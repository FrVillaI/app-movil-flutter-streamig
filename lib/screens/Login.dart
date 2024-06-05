import 'package:flutter/material.dart';
import 'Registro.dart';
import 'Catalogo.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
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
        title: const Text('Login'),
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
          BotonInicio(context),
          BotonRegistro(context)
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

Widget BotonInicio(context) {
  return (ElevatedButton(
    onPressed: () {
      alerta(context);
    },
    child: Text("Iniciar Sesión"),
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
          title: Text("Credenciales Correctas"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Catalogo()));
                },
                child: Text("Ver Catalogo"))
          ],
        ));
      });
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
