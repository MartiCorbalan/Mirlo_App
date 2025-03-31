import 'package:flutter/material.dart';
import 'Chat.dart'; // Importación correcta de Chat.dart
import 'NewPage.dart'; // Importa tu página inicial
import 'ProfileIconWithNotification.dart'; // Asegúrate de importar el widget si lo usas en otro lado

class MinimalBottomNavBar extends StatefulWidget {
  @override
  _MinimalBottomNavBarState createState() => _MinimalBottomNavBarState();
}

class _MinimalBottomNavBarState extends State<MinimalBottomNavBar> {
  int _currentIndex = 0;

  // Método para obtener el widget de la página actual
  Widget _getPage(int pageIndex) { // Cambiado para coincidir con la llamada en `body`
    switch (pageIndex) {
      case 0:
        return NewPage(); // Página inicial
      case 1:
        return const Center(child: Text('Página 2', style: TextStyle(fontSize: 24, color: Colors.white)));
      case 2:
        return Chat(); // Aquí llamamos al widget Chat
      default:
        return const Center(child: Text('Página por defecto', style: TextStyle(fontSize: 24, color: Colors.white)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Minimal Navbar', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: _getPage(_currentIndex), // Llama al método correcto
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        elevation: 5,
        type: BottomNavigationBarType.fixed, // Cambiado para quitar el efecto shifting
        enableFeedback: false, // Desactiva el efecto de respuesta háptica
      ),
    );
  }
}
