import 'package:flutter/material.dart';

Card reusableTextCard(String text1, String text2) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "${text1}",
            style: TextStyle(
                color: Color(0xff4CB1A2),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            "${text2}",
          ),
        ],
      ),
    ),
  );
}
