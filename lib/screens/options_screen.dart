import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/alerts_screen.dart';
import 'chat_screens/two_options_screen.dart';
import 'chat_screens/take_photo_screen.dart';

class OptionsScreen extends StatelessWidget {
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
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TakePhotoScreen()),
                );
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
                // Lógica para seleccionar 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TwoOptionsScreen()),
                );
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
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/icons/chat.png',
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lógica para seleccionar 
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertsScreen()),
                );
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
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/icons/alert.png',
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