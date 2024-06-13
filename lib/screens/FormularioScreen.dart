import 'package:firebase_database/firebase_database.dart'; 
import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(Formulario()); 
} 
 
class Formulario extends StatelessWidget { 
  const Formulario({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return const MaterialApp( 
      home:Home(), 
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
        title: const Text('Formulario'), 
      ), 
      body: Cuerpo(), 
    ); 
  } 
} 
 
Widget Cuerpo(){ 
  return( 
    Column( 
      children: <Widget>[ 
        Text("Formulario"), 
        CampoId(), 
        CampoPelicula(), 
        CampoDuracion(), 
        BotonGuardar(), 
      ], 
      ) 
  ); 
} 
 
final TextEditingController _id = TextEditingController(); 
Widget CampoId(){ 
  return( 
    TextField( 
      controller: _id, 
      decoration: InputDecoration( 
        hintText: "Ingresar ID" 
      ), 
    ) 
  ); 
} 
 
final TextEditingController _pelicula = TextEditingController(); 
Widget CampoPelicula(){ 
  return( 
    TextField( 
      controller: _pelicula, 
      decoration: InputDecoration( 
        hintText: "Ingresar Pelicula" 
      ), 
    ) 
  ); 
} 
 
final TextEditingController _duracion = TextEditingController(); 
Widget CampoDuracion(){ 
  return( 
    TextField( 
      controller: _duracion, 
      decoration: InputDecoration( 
        hintText: "Ingresar la Duracion" 
      ), 
    ) 
  ); 
} 
 
Widget BotonGuardar(){ 
  return( 
    FilledButton( 
      onPressed: (){ 
        guardar(); 
      },child: Text("Guardar"), 
    ) 
  ); 
} 
 
Future <void> guardar()async{ 
  DatabaseReference ref= FirebaseDatabase.instance.ref("peliculas/"+_id.text); 
  await ref.set({ 
    "id":_id.text, 
    "pelicula":_pelicula.text, 
    "duracion":_duracion.text 
  }); 
}