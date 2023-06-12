import 'dart:developer';

class Calcul {
  String result({
    required String alcoolEntry,
    required String gasolinaEntry,
  }) {
    final double alcoolPrice = double.parse(alcoolEntry);
    final double gasolinaPrice = double.parse(gasolinaEntry);

    const String alcoolResult = " Vai de Alcool!";
    const String gasolinaResult = "Vai de Gasosa!";

    final double coeficient = alcoolPrice / gasolinaPrice;

    final bool result = coeficient <= 0.7;

    return result ? alcoolResult : gasolinaResult;
  }
}
