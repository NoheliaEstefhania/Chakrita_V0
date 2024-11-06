import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/options_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permissions'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Allow to ACCESS my Location',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Solicitar permiso de ubicación
                PermissionStatus status = await Permission.location.request();
                if (status.isGranted) {
                  // Si se concede el permiso, navegar a la pantalla de opciones
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => OptionsScreen()),
                  );
                } else {
                  // Mostrar mensaje si el permiso es denegado
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'Location permission is required to continue.')),
                  );
                }
              },
              child: Text('OK'),
            ),
            Text(
              'Please share your location so I can help you',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
