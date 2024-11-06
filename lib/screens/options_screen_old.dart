import 'package:flutter/material.dart';

class OptionsScreenOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Look Up an Object'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt, size: 60),
            SizedBox(height: 20),
            Icon(Icons.article, size: 60),
            SizedBox(height: 20),
            Icon(Icons.warning, size: 60),
          ],
        ),
      ),
    );
  }
}
