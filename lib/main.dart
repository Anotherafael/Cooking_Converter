import 'package:cooking_converter/screens/form.dart';
import 'package:flutter/material.dart';

void main() => runApp(CookingConverterApp());

class CookingConverterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: ProductForm(),
    );
  }
}