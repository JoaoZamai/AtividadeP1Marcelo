import 'package:flutter/material.dart';
import 'package:marcelop1_joao_vitor_zamai_ra25000783/app/views/home_page.dart';
import 'package:marcelop1_joao_vitor_zamai_ra25000783/app/views/login_page.dart';
import 'package:marcelop1_joao_vitor_zamai_ra25000783/app/views/signup_page.dart';
import 'package:marcelop1_joao_vitor_zamai_ra25000783/app/views/splash_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E. Reader",
      theme: ThemeData(useMaterial3: true),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
      },
    ),
  );
}
