import 'package:flutter/material.dart';
import 'permissions_screen.dart';
import 'alerts_screen.dart';
import 'chat_screens/upload_photo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Huerto NASA'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Lógica para tomar foto
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 220), // Tamaño fijo para que ambos botones tengan la misma medida
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Bordes menos redondeados
                ),
                padding: EdgeInsets.all(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Tomar una Foto',
                    textAlign: TextAlign.center, // Centra el texto
                    style: TextStyle(fontSize: 26), // Cambia el tamaño del texto
                  ),
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/icons/camera.png', // Ruta de la imagen
                    width: 120, 
                    height: 120,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lógica para seleccionar de la galería
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 220), // Tamaño fijo igual que el botón anterior
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Go to gallery',
                    style: TextStyle(fontSize: 26),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/icons/gallery.png',
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
