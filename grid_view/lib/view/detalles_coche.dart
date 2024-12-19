import 'package:flutter/material.dart';
import '../models/coche.dart';

class DetallesCoche extends StatelessWidget {
  final Coche coche;

  const DetallesCoche({Key? key, required this.coche}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${coche.marca} ${coche.modelo}'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Imagen del coche (parte superior)
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                width: double.infinity, // Imagen ocupa todo el ancho disponible
                height: 250, // Ajusta la altura según lo necesites
                color: Colors.grey[200], // Fondo de la imagen
                child: coche.image, // Suponiendo que coche.image es un widget Image
              ),
            ),
            const SizedBox(height: 16.0), // Espaciado entre la imagen y los detalles
            // Detalles del coche (parte inferior)
            Text(
              coche.marca,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              coche.modelo,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            const Divider(thickness: 1, color: Colors.deepPurple),
            const SizedBox(height: 16.0),
            const Text(
              'Características principales:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Motor: \n'
                  '- Color: \n'
                  '- Transmisión: \n'
                  '- Año: ',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
