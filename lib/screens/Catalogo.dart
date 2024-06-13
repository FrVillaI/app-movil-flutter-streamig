import 'package:app_streming_pro/screens/Reproduccion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Catalogo());
}

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catálogo de Películas',
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
  final List<Map<String, String>> peliculas = [
    {
      'titulo': 'Inception',
      'descripcion': 'Una película de ciencia ficción dirigida por Christopher Nolan.',
      'imagen': '',
    },
    {
      'titulo': 'Interstellar',
      'descripcion': 'Un viaje épico a través del espacio y el tiempo dirigido por Christopher Nolan.',
      'imagen': '',
    },
    {
      'titulo': 'The Dark Knight',
      'descripcion': 'Batman enfrenta a su mayor enemigo, el Joker.',
      'imagen': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Películas'),
      ),
      backgroundColor: Colors.grey[200], // Fondo gris claro
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: peliculas.length,
      itemBuilder: (context, index) {
        return _buildMovieCard(context, peliculas[index]);
      },
    );
  }

  Widget _buildMovieCard(BuildContext context, Map<String, String> pelicula) {
    return Card(
      color: Colors.white, // Fondo blanco del card
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(pelicula['titulo']!),
        subtitle: Text(pelicula['descripcion']!),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PantallaTituloPelicula(),
            ),
          );
        },
      ),
    );
  }
}

class Reproduccion extends StatelessWidget {
  final Map<String, String> pelicula;

  const Reproduccion({super.key, required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pelicula['titulo']!),
      ),
      body: Center(
        child: Text('Reproduciendo ${pelicula['titulo']}'),
      ),
    );
  }
}
