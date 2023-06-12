import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/calculate_button.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/reset_button.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  void Function() calculateCallback;
  void Function() resetCallback;
  bool enableButtons;

  Buttons({
    Key? key,
    required this.calculateCallback,
    required this.resetCallback,
    required this.enableButtons,
  }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CalculateButton(
          callback: widget.calculateCallback,
          enableButtons: widget.enableButtons,
        ),
        ResetButton(
          callback: widget.resetCallback,
        ),
      ],
    );
  }
}
