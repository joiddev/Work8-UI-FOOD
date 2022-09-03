import 'package:flutter/material.dart';
import './menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 193, 209),
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("Food Menu"),
        ),
        body: Menu(),

        

      ),
    );
  }
}

