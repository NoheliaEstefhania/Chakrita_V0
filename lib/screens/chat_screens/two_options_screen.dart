import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CustomAppBar.dart';
import 'take_photo_screen.dart';

class TwoOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Mi Huerto NASA'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TakePhotoScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250,
                    220), // Tamaño fijo para que ambos botones tengan la misma medida
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Bordes menos redondeados
                ),
                padding: EdgeInsets.all(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Take a picture',
                    textAlign: TextAlign.center, // Centra el texto
                    style:
                        TextStyle(fontSize: 26), // Cambia el tamaño del texto
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
                fixedSize: Size(250, 220),
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
