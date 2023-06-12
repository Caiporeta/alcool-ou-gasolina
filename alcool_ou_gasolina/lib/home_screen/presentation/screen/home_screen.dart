import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/data_entries.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/home_title.dart';
import 'package:alcool_ou_gasolina/home_screen/presentation/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreenBody(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff3045a2),
        title: const Text("Alcool ou Gasolina?"),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _displayResult(String result) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                result,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                FloatingActionButton(
                  onPressed: () => Navigator.of(context).pop(),
                  mini: true,
                  child: const Icon(Icons.close),
                )
              ],
            );
          });
    }

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Logo(),
            const HomeTitle(),
            const SizedBox(
              height: 16.0,
            ),
            DataEntries(
              displayResult: (result) => _displayResult(result),
            ),
          ],
        ),
      ),
    ));
  }
}
