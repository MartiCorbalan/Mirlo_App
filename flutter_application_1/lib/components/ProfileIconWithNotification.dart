import 'package:flutter/material.dart';

class ProfileIconWithNotification extends StatelessWidget {
  final bool isSelected; // Agregamos una variable para saber si está seleccionado

  ProfileIconWithNotification({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Transform.translate(
          offset: Offset(0, isSelected ? 5 : 0), // Baja el ícono cuando está seleccionado
          child: const CircleAvatar(
            radius: 20.0, // Tamaño del ícono ajustado
            backgroundColor: Colors.black,
            child: Icon(
              Icons.account_circle,
              size: 30.0, // Tamaño del ícono ajustado
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: -5,
          right: -5,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Text(
              '10',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
