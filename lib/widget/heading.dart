import 'package:flutter/material.dart';

buildHeading(title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(35, 74, 131, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
