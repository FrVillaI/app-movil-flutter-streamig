import 'package:flutter/material.dart';
import 'Catalogo.dart';
import 'Reproduccion.dart';

void main(){
  runApp(Aplicacion3());
}

class Aplicacion3 extends StatelessWidget {
  const Aplicacion3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int indice=0;
  @override
  Widget build(BuildContext context) {
    /////////////////////////////////
    List <Widget> screens =[
      const Catalogo(),
     PantallaTituloPelicula()
    ];
    //////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenidos"),
      ),
      body:  screens[indice],
      //////////////////////////////////////////////////////////////////
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: ( valor ) {
          setState(() {
            indice = valor;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ventana 01"),
          BottomNavigationBarItem(icon: Icon(Icons.no_drinks), label: "Ventana 02"),
        ],
        ),
        //////////////////////////////////////////////////////////
    );
  }
}
