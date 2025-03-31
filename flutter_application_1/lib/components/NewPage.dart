import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Perfil',
            style: TextStyle(color: Colors.white), // Cambia el color si lo deseas
          ),
        ],
      ),
      backgroundColor: Colors.grey[800]!,
    ),

      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Card de perfil
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 117, 149, 213),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('URL_DE_TU_IMAGEN'),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'corba',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        '@martilluc-1',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Acción del botón Ver Mapa de Afinidad
                            },
                            icon: const Icon(Icons.map),
                            label: const Text('Ver Mapa de Afinidad'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 138, 189, 17),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Acción del botón de edición
                            },
                            icon: const Icon(Icons.edit),
                            color: const Color.fromARGB(179, 38, 215, 103),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espacio debajo de la tarjeta de perfil

                // Carrusel de imágenes infinito
                SizedBox(
                  height: 150, // Altura del carrusel
                  child: InfiniteCarousel(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfiniteCarousel extends StatefulWidget {
  @override
  _InfiniteCarouselState createState() => _InfiniteCarouselState();
}

class _InfiniteCarouselState extends State<InfiniteCarousel> {
  final PageController _controller = PageController(initialPage: 1000); //para hacer el carusel infinito igualamos a 1000
  final List<String> imagePaths = [
    'assets/perro1.jpeg',
    'assets/perro2.jpeg',
    'assets/perro3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      itemBuilder: (context, index) {
        final actualIndex = index % imagePaths.length; //para repetir los elementos de la lista
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePaths[actualIndex]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
