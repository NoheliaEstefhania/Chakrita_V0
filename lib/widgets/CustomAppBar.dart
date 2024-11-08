import 'package:flutter/material.dart';

// Widget personalizado para AppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  // Constructor para recibir el título como parámetro
  const CustomAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 30, // Ajusta el tamaño según tus necesidades
          ),
          const SizedBox(height: 20), // Espacio entre el logo y el texto
          Text(
            titleText,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  // Esto es necesario para implementar PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(120);
}
