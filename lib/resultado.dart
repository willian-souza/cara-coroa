import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  //const Resultado({super.key});

  int valor;

  Resultado(this.valor, {super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var image = "";

    if (widget.valor == 1) {
      image = "images/moeda_cara.png";
    } else {
      image = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61db86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(image),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
