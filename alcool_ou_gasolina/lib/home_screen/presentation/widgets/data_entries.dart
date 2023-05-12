import 'dart:developer';

import 'package:alcool_ou_gasolina/home_screen/domain/use_case/calcul.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/buttons.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/calculate_button.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/data_entry.dart';
import 'package:flutter/material.dart';

class DataEntries extends StatefulWidget {
  const DataEntries({Key? key}) : super(key: key);

  @override
  State<DataEntries> createState() => _DataEntriesState();
}

class _DataEntriesState extends State<DataEntries> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();

  Calcul calcul = Calcul();

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
                    controller: alcoolController),
                const SizedBox(
                  height: 16.0,
                ),
                DataEntry(
                    label: "Preco Gasolina, ex: 3.15",
                    controller: gasolinaController),
                const SizedBox(
                  height: 16.0,
                ),
                Buttons(
                  calculateCallback: () => _calculateBetterOption(),
                  resetCallback: () => _resetEntries(),
                ),
              ],
            ),
          )),
    );
  }

  void _calculateBetterOption() {
    calcul.result(
      alcoolEntry: alcoolController.text,
      gasolinaEntry: gasolinaController.text,
    );
  }

  void _resetEntries() {
    alcoolController.clear();
    gasolinaController.clear();
  }
}
