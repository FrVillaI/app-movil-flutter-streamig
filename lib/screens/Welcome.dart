import 'package:app_streming_pro/screens/Catalogo.dart';
import 'package:app_streming_pro/screens/FormularioScreen.dart';
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
        color: Color.fromARGB(255, 58, 255, 58), // Color verde fosforescente
      ),
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '¡Bienvenido a nuestra aplicación de streaming!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
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
      child: const Text(
        'Iniciar Sesión',
        style: TextStyle(color: Colors.white), // Color del texto blanco
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // Color del botón negro
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
      child: const Text(
        'Registrarse',
        style: TextStyle(color: Colors.white), // Color del texto blanco
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // Color del botón negro
      ),
    );
  }
}
