import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/options_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permissions'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Allow access to my location',
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
                } else if (status.isDenied) {
                  // Si el permiso es denegado, mostrar un mensaje
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Location permission is required to continue.'),
                    ),
                  );
                } else if (status.isPermanentlyDenied) {
                  // Si el permiso es permanentemente denegado, redirigir a la configuración
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Location permission is permanently denied. Please enable it in settings.'),
                    ),
                  );
                  // Aquí podrías abrir la configuración de la app si lo deseas:
                  // openAppSettings();
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
