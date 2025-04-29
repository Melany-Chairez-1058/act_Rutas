import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb1bc81), // Fondo azul
        title: const Center(
          child: Text(
            'pantalla Dos',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Show Alert Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Flutter Mapp'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('This is the Alert Dialog'),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Pantalla inicial!'),
          )),
        ],
      ),
    );
  }
}
