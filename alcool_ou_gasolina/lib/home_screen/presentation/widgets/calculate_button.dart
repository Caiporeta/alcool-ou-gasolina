import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalculateButton extends StatefulWidget {
  void Function() callback;

  CalculateButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueAccent,
      ),
      onPressed: () {
        widget.callback.call();
      },
      child: const Text(
        "Calcular",
        style:
            TextStyle(color: Colors.white, fontSize: 20.0, letterSpacing: 2.0),
      ),
    );
  }
}
