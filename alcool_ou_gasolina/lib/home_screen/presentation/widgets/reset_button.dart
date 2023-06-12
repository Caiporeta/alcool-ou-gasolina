import 'package:flutter/material.dart';

class ResetButton extends StatefulWidget {
  void Function() callback;
  bool enableButtons;

  ResetButton({
    Key? key,
    required this.callback,
    required this.enableButtons,
  }) : super(key: key);

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
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
        "Resetar",
        style:
            TextStyle(color: Colors.white, fontSize: 20.0, letterSpacing: 2.0),
      ),
    );
  }
}
