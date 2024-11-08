import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/chat_screens/chat_screen_conversation.dart';
import 'package:flutter_application_1/widgets/CustomAppBar.dart';

class UploadContextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Sent recording'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Cuadrado en la parte superior
          Container(
            width: 400.0, // Tamaño del cuadrado
            height: 500.0,
            color: Colors.grey.withOpacity(0.5), // Color del cuadrado
            margin: EdgeInsets.all(20.0), // Espacio superior opcional
            child: Image.asset(
              'assets/images/photo.png',
              fit: BoxFit.cover, // Ajusta cómo la imagen llena el contenedor
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0), // Espacio inferior
            child: ElevatedButton.icon(
              onPressed: () {
                // Navegar a la pantalla de Chat cuando se presiona el botón
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChatScreen()), // Aquí se hace la navegación
                );
              },
              style: ElevatedButton.styleFrom(
                shape:
                    StadiumBorder(), // Esto hace que el botón tenga bordes redondeados
                padding: EdgeInsets.symmetric(
                    vertical: 12, horizontal: 20), // Ajusta el padding
              ),
              icon: Icon(
                Icons.send,
                size: 24, // Tamaño del icono
              ),
              label: Text(
                'Sent', // El texto que aparece en el botón
                style: TextStyle(
                    fontSize: 16), // Puedes cambiar el tamaño del texto aquí
              ),
            ),
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
