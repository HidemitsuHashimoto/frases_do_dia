import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _frases = [
    'Frase 1',
    'Frase 2',
    'Frase 3',
    'Frase 4',
  ];

  String _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    int numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text(
                'Nova Frase',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
