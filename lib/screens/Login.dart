import 'package:flutter/material.dart';
import 'registro.dart';
import 'Catalogo.dart';
import 'Contenidos.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _contraseniaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(color: Color.fromARGB(255, 96, 143, 114)),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCorreoField(),
              const SizedBox(height: 16.0),
              _buildContraseniaField(),
              const SizedBox(height: 16.0),
              _buildLoginButton(context),
              const SizedBox(height: 16.0),
              _buildRegistroButton(context),
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
        hintText: 'Ingresar el correo electrónico',
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
        hintText: 'Ingresar la contraseña',
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

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          _showLoginDialog(context);
        }
      },
      child: const Text('Iniciar Sesión'),
    );
  }

  Widget _buildRegistroButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Registro()),
        );
      },
      child: const Text('Registrarse'),
    );
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Credenciales Correctas'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aplicacion3()),
                );
              },
              child: const Text('Ver Catálogo'),
            ),
          ],
        );
      },
    );
  }
}
