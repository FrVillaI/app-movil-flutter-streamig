import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(Registro());
}

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registro",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _contraseniaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 96, 143, 114)),
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildCorreoField(),
              const SizedBox(height: 16.0),
              _buildContraseniaField(),
              const SizedBox(height: 16.0),
              _buildRegistroButton(context),
              const SizedBox(height: 16.0),
              _buildInicioButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCorreoField() {
    return TextFormField(
      controller: _correoController,
      decoration: const InputDecoration(
        hintText: "Ingresar el correo electrónico",
        fillColor: Colors.white,
        filled: true,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor ingrese su correo';
        }
        return null;
      },
    );
  }

  Widget _buildContraseniaField() {
    return TextFormField(
      controller: _contraseniaController,
      decoration: const InputDecoration(
        hintText: "Ingresar la contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor ingrese su contraseña';
        }
        return null;
      },
    );
  }

  Widget _buildRegistroButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          _showRegistroDialog(context);
        }
      },
      child: const Text("Registrarse"),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      ),
    );
  }

  void _showRegistroDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Registro Exitoso"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  Widget _buildInicioButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      },
      child: const Text("Iniciar Sesión"),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      ),
    );
  }
}
