import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalculateButton extends StatefulWidget {
  void Function() callback;
  bool enableButtons;

  CalculateButton({
    Key? key,
    required this.callback,
    required this.enableButtons,
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
        enableFeedback: widget.enableButtons,
      ),
      onPressed: () {
        if (widget.enableButtons) {
          widget.callback.call();
        }
      },
      child: const Text(
        "Calcular",
        style:
            TextStyle(color: Colors.white, fontSize: 20.0, letterSpacing: 2.0),
      ),
    );
  }
}
