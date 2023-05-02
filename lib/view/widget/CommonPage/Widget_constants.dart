import 'package:flutter/material.dart';

const Color backgroundColor = Color.fromARGB(244, 227, 209, 217);
InputDecoration decoration(String hint) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(255, 82, 80, 80))),
    hintText: hint,
    fillColor: Colors.grey[200],
    filled: true,
  );
}

EdgeInsets padding25Horizontal() =>
    const EdgeInsets.symmetric(horizontal: 25.0);
