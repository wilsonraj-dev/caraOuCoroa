import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Resultado extends StatefulWidget {
  
  String valor;
  // ignore: use_key_in_widget_constructors
  Resultado (this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable, prefer_typing_uninitialized_variables
    var caminhoImagem;
    if(widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset("images/botao_voltar.png")
          )
        ],
      )
    );
  }
}