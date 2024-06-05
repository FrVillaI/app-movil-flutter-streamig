import 'package:flutter/material.dart';
import 'login.dart';
import 'registro.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: const WelcomeBody(),
    );
  }
}

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 96, 143, 114),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLoginButton(context),
            const SizedBox(height: 16.0),
            _buildRegisterButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      },
      child: const Text('Iniciar Sesión'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Registro()),
        );
      },
      child: const Text('Registrarse'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      ),
    );
  }
}
