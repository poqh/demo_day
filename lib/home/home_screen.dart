import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const textoAppVar = Text(
            'App bar',
            style: TextStyle(
              color: Colors.white, // Establecer el color del texto
            )
          );

  static const TextStyle fontSize = TextStyle(fontSize: 30);

  

  

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.blue.shade500;
    int counter = 10;
    return Scaffold(
      appBar: AppBar(
        title: textoAppVar,
        backgroundColor: primaryColor,
      ),
      body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Número de clicks', style: fontSize),
              Text('$counter', style: fontSize)
            ],
          )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          backgroundColor: primaryColor,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white,),
        ),
    );
  }

}