import 'package:flutter/material.dart';
import 'package:travel_app/authentication_section/authentication_screen.dart';
import 'package:travel_app/starter_section/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/registration_screen': (context) => const RegistrationScreen(),
      },
    ),
  );
}
