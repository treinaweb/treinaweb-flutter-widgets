import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/screens/home_screen.dart';
import 'package:lifepet_app/screens/form_pet_screen.dart';
import 'package:lifepet_app/screens/login_screen.dart';
import 'package:lifepet_app/screens/pet/remedio_screen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pet Life",
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
