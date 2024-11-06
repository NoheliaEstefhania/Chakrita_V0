import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onYes;
  final VoidCallback onNo;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.onYes,
    required this.onNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: onNo,
          child: Row(
            children: [
              Icon(Icons.close, color: Colors.red),
              SizedBox(width: 5),
              Text('No', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        TextButton(
          onPressed: onYes,
          child: Row(
            children: [
              Icon(Icons.check, color: Colors.green),
              SizedBox(width: 5),
              Text('Yes', style: TextStyle(color: Colors.green)),
            ],
          ),
        ),
      ],
    );
  }
}
