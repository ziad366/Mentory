import 'package:flutter/material.dart';

TextFormField customTextFormField(
    {required TextEditingController fieldController,
    required String labelTxt,
    required String hintTxt,
    required String? Function(String?)? validatorFunction}) {
  return TextFormField(
    controller: fieldController,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      labelText: labelTxt,
      hintText: hintTxt,
      border: const OutlineInputBorder(),
    ),
    validator: validatorFunction,
  );
}
