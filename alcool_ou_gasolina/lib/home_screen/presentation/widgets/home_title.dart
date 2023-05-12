import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Saiba qual a melhor opcao para abastecimento do seu carro",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black87, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
