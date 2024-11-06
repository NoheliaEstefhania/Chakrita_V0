import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas Climáticas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recibir alertas sobre el clima',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para activar alertas
              },
              child: Text('Activar Alertas'),
            ),
          ],
        ),
      ),
    );
  }
}
