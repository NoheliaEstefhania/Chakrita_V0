import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/permission_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('We take care of your chakra'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'We help farmers make smarter decisions...',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                // Navegar a la pantalla de permisos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PermissionScreen()),
                );
              },
              child: Image.asset('assets/nasa_sign.png',
                  width: 150), // Reemplaza con tu imagen
            ),
          ],
        ),
      ),
    );
  }
}
