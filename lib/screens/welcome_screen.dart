import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/permission_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Text('We take care of your chakra', 
          style: TextStyle(
            color: Colors.green, 
            fontSize: 25, 
            fontWeight: FontWeight.bold, 
          ),
        ),
        //backgroundColor: Colors.green,
        centerTitle: true,
      ),
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
