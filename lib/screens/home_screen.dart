import 'package:flutter/material.dart';
import 'permissions_screen.dart';
import 'alerts_screen.dart';
import 'chat_screens/two_options_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 120,
        title: const Text('Mi Huerto NASA', 
          style: TextStyle(
            color: Colors.green, 
            fontSize: 25, 
            fontWeight: FontWeight.bold, 
            ),
          ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Cuidamos tu huerto',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PermissionsScreen()),
                );
              },
              child: const Text('Tomar una Foto'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TwoOptionsScreen()),
                );
              },
              child: const Text('Chat con Asistente'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertsScreen()),
                );
              },
              child: const Text('Activar Alertas'),
            ),

          ],
        ),
      ),
    );
  }
}
