import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/permission_screen.dart';
import 'package:flutter_application_1/widgets/CustomAppBar.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'We take care of your chakra'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'We help farmers make smarter decisions, optimize their resources, and most importantly, protect their production against climate challenges.',
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
              child: Image.asset('assets/images/carter_farm.png',
                  width: 450), // Reemplaza con tu imagen
            ),
          ],
        ),
      ),
    );
  }
}
