import 'package:flutter/material.dart';

class Textfileds extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const Textfileds({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          )
        )
      ),
    );
  }
}
