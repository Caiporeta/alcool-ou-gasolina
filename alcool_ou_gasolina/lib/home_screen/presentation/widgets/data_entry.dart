import 'package:flutter/material.dart';

class DataEntry extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  const DataEntry({
    Key? key,
    required this.controller,
    required this.label,
  }) : super(key: key);

  @override
  State<DataEntry> createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: TextField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          cursorColor: Colors.blueAccent,
          cursorWidth: 4.0,
          decoration: InputDecoration(
            hintText: widget.label,
            hintStyle: const TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
      ),
    );
  }
}
