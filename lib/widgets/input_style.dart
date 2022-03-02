import 'package:flutter/material.dart';

class InputStyle extends StatelessWidget {
  var hintText;
  var onSubmit;
  late final TextEditingController? controller;

  InputStyle({
    this.controller,
    required this.hintText,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onSubmitted: onSubmit,
    );
  }
}
