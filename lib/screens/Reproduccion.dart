import 'package:flutter/material.dart';

class PantallaTituloPelicula extends StatelessWidget {
  final String titulo = "Inception";
  final String descripcion = "Una película de ciencia ficción dirigida por Christopher Nolan.";
  final String imagenUrl = "https://via.placeholder.com/400x300.png?text=Inception";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de la Película'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagenUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  descripcion,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Acción para reproducir la película
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Reproducir'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Acción para agregar a favoritos
                      },
                      icon: const Icon(Icons.favorite_border),
                      label: const Text('Favoritos'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PantallaTituloPelicula(),
  ));
}
