import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF324A7B), 
      elevation: 0,
      toolbarHeight: 80, 
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/perro1.jpeg', 
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 10), 
              const Text(
                'MIRLO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Acción para el primer icono
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.menu, // Cambia el icono según necesites
                  color: Colors.white,
                ),
                onPressed: () {
                  // Acción para el segundo icono
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0); // Altura del AppBar
}
