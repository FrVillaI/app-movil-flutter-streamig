import 'package:app_streming_pro/screens/Welcome.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(streamig());
}

class streamig extends StatelessWidget {
  const streamig({super.key});

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
  State<Home> createState() => _CuerpoState();
}

class _CuerpoState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: const Text('Main'),
      ),
      */
      body: Welcome(),
    );
  }
}
