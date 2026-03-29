import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset(
          'lib/assets/RL2.png',
          width: 32,
          height: 32,
        ),
        title: const Text('e. Reader', textAlign: TextAlign.start,),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Text(
            'Bem-vindo ao e. Reader!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),


    );
  }

} 