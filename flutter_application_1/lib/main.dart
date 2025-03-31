import 'package:flutter/material.dart';
import './components/Menu.dart'; // Cambia el nombre del archivo según el que contenga MinimalBottomNavBar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Color claro para un diseño más minimalista
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: MinimalBottomNavBar(), // Llama a la barra de navegación minimalista
    );
  }
}
