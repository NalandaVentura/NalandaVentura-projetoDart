import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// app de frases aleatórias com, array de frases
void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP frases aleatorias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  //back do app
  //criar um array de frases para ser exibidas de forma aleatoria

  var _frases = [
    'Nunca deixe um computador perceber que você está com pressa.',
    'Se seu Windows não trava, reclame com a Microsoft.',
    'Quando o computador apresentar irregularidades, pode ser problema de BIOS (Bicho Ignorante Operando Sistema).',
    'Errar é humano, colocar a culpa no computador é mais humano ainda.',
    'Campeão dos jogos das escontidas... " ; " desde 1958',
    'Na informática nada se perde, nada se cria. Tudo se copia...e depois se cola.',
    'As vezes só precisa de um pouco de paciencia para perceber que era um ";" - by nalanda',
  ];

  var _FrasesGerada = 'clique abaixo para gerer uma frase: ';

  void _gerarfrase (){
    var numerosorteado = Random() .nextInt(_frases.length);
    setState(() {
      _FrasesGerada = _frases[numerosorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases de programadores',
            style: TextStyle(
              fontFamily: 'roboto',
              fontSize: 50,
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
        ),
        backgroundColor: Colors.yellow, // cor do appBar
      ),
      body: Center( //centralizar o body
        child: Container(
          padding: EdgeInsets.all(16), // espaçamento appbar para o body
          child: Column( //verticalizar os elementos
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // spacearond- entre os espaços//.
            crossAxisAlignment: CrossAxisAlignment.center,
            // centralizar o espaçamento
            children: <Widget>[
              Image.asset('Image/imaggif.gif' //crie seu logo no canvas
              ),
              Text(_FrasesGerada,
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),

              ElevatedButton( //botão para gerar frases.
                onPressed: _gerarfrase, //colocar a função array de frases aleatórias
                child: Text('GERAR FRASE',
                  style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 35,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),

                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

