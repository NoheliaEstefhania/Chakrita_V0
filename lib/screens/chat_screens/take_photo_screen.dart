import 'package:flutter/material.dart';

class TakePhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recording'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
