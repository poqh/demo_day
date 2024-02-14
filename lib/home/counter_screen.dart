import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CounterScreenState();

}

class _CounterScreenState extends State<CounterScreen> {

  static const textoAppVar = Text(
            'Counter Screen',
            style: TextStyle(
              color: Colors.white, // Establecer el color del texto
            )
          );

  static const TextStyle fontSize = TextStyle(fontSize: 30);
  int counter = 10;
  static const SizedBox sizedBox = SizedBox(width: 20);
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.blue.shade500;
    
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              onPressed: () { 
                counter++; 
                setState(() { });
              },
              backgroundColor: primaryColor,
              shape: const CircleBorder(),
              child: const Icon(Icons.plus_one_outlined, color: Colors.white,),
            ),
          sizedBox,
          FloatingActionButton(
              onPressed: () { 
                counter = 0; 
                setState(() { });
              },
              backgroundColor: primaryColor,
              shape: const CircleBorder(),
              child: const Icon(Icons.restart_alt, color: Colors.white,),
            ),
          sizedBox,
          FloatingActionButton(
              onPressed: () { 
                counter--; 
                setState(() { });
              },
              backgroundColor: primaryColor,
              shape: const CircleBorder(),
              child: const Icon(Icons.exposure_minus_1_outlined, color: Colors.white,),
            ),
        ],
      ),

      
    );
  }

}