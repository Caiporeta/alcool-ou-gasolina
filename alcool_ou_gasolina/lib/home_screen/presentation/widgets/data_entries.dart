import 'dart:developer';

import 'package:alcool_ou_gasolina/home_screen/domain/use_case/calcul.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/buttons.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/calculate_button.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/data_entry.dart';
import 'package:flutter/material.dart';

class DataEntries extends StatefulWidget {
  void Function(String result) displayResult;

  DataEntries({
    Key? key,
    required this.displayResult,
  }) : super(key: key);

  @override
  State<DataEntries> createState() => _DataEntriesState();
}

class _DataEntriesState extends State<DataEntries> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();

  Calcul calcul = Calcul();
  bool _shouldEnableButtons = false;

  void shouldEnableButtonsCallback({
    required bool hasAlcoolEntry,
    required bool hasGasolinaEntry,
  }) {
    setState(() {
      _shouldEnableButtons = hasAlcoolEntry & hasGasolinaEntry;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff1c349c),
              borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DataEntry(
                  label: "Preco Alcool, ex: 1.59",
                  controller: alcoolController,
                  enableButtonsCallback: () => shouldEnableButtonsCallback(
                    hasAlcoolEntry: alcoolController.text.isNotEmpty,
                    hasGasolinaEntry: gasolinaController.text.isNotEmpty,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                DataEntry(
                  label: "Preco Gasolina, ex: 3.15",
                  controller: gasolinaController,
                  enableButtonsCallback: () => shouldEnableButtonsCallback(
                    hasAlcoolEntry: alcoolController.text.isNotEmpty,
                    hasGasolinaEntry: gasolinaController.text.isNotEmpty,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Buttons(
                  calculateCallback: () => _calculateBetterOption(),
                  resetCallback: () => _resetEntries(),
                  enableButtons: _shouldEnableButtons,
                ),
              ],
            ),
          )),
    );
  }

  void _calculateBetterOption() {
    final String result = calcul.result(
      alcoolEntry: alcoolController.text,
      gasolinaEntry: gasolinaController.text,
    );

    widget.displayResult(result);
  }

  void _resetEntries() {
    alcoolController.clear();
    gasolinaController.clear();
  }
}
