import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
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
          Center(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Flutter App',
              applicationVersion: 'version 1.0.0',
              aboutBoxChildren: [
                Text('This is a text created by Flutter Mapp'),
              ],
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
