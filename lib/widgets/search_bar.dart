// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class Thesearchbar extends StatelessWidget {
  const Thesearchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 5),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xFFFFA500),
            ),
            hintText: "Search products",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: const Color(0xffffaa500)),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange)
                // focusColor:
                //     Colors.transparent, // Prevent hint text color change on focus
                ),
          ),
        ));
  }
}
