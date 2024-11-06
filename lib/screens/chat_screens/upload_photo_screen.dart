import 'package:flutter/material.dart';
import 'take_photo_screen.dart';

class UploadPhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subir Foto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // Lógica para tomar foto
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TakePhotoScreen()),
                );
              },
              icon: Icon(Icons.camera_alt),
              label: Text('Tomar una Foto'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica para seleccionar de la galería
              },
              icon: Icon(Icons.photo_library),
              label: Text('Seleccionar de la Galería'),
            ),
          ],
        ),
      ),
    );
  }
}
