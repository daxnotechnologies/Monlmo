import 'package:flutter/material.dart';

TextField reusableTextfield(String text, TextEditingController controller) {
  return TextField(
    controller: controller,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      filled: true,
      fillColor: Color(0xFFF2F2F2).withOpacity(0.8),
      labelText: text,
      labelStyle: TextStyle(color: Color(0xFF7A7A7A)),
    ),
  );
}
