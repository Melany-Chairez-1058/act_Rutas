import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb1bc81), // Fondo azul verdoso
        title: const Center(
          child: Text(
            'Pantalla Seis',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
              child: const Text(
                "Switch",
              ),
            )
          ],
        ),
      ),
    );
  }
}
