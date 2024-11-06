import 'package:flutter/material.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permisos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Permitir acceso a la cámara y galería',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para solicitar permisos de cámara
              },
              child: const Text('Permitir Cámara'),
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para solicitar permisos de galería
              },
              child: const Text('Permitir Galería'),
            ),
          ],
        ),
      ),
    );
  }
}
