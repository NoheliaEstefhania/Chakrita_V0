import 'package:flutter/material.dart';

class TakePhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recording'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Cuadrado en la parte superior
          Container(
            width: 400.0, // Tamaño del cuadrado
            height: 600.0,
            color: Colors.grey.withOpacity(0.5), // Color del cuadrado
            margin: EdgeInsets.all(20.0) // Espacio superior opcional
          ),
          
          // Botón en la parte inferior
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0), // Espacio inferior
            child: ElevatedButton(
              onPressed: () {
                // Lógica para seleccionar de la galería
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(), // Hace el botón circular
                padding: EdgeInsets.all(5), // Ajusta el tamaño del botón
              ),
              child: Icon(
                Icons.circle,
                size: 60, // Ajusta el tamaño del ícono
              ),
            ),
          )

        ],
      ),
    );
  }
}

