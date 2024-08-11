import 'package:flutter/material.dart';

void showSnackBarMessage(BuildContext context, String content,
    {bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: isError ? Colors.red : Theme.of(context).primaryColor,
    ),
  );
}
