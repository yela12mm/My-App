import 'package:flutter/material.dart';

// ignore: unused_element
Widget _buildBotonConLinea(IconData icono, String texto) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icono, color: Colors.purple, size: 32),
              const SizedBox(width: 12),
              Container(height: 40, width: 1, color: Colors.grey[300]),
              const SizedBox(width: 12),
              Expanded(
                child: Text(texto, style: const TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      ),
      const Divider(height: 1, thickness: 1, color: Colors.grey),
      const SizedBox(height: 8),
    ],
  );
}
