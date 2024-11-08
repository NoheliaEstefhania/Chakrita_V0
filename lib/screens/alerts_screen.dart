import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CustomAppBar.dart';

class AlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Alerts'),
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
