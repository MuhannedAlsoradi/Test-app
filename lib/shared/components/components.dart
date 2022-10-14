// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.teal,
  bool isUpperCase = true,
  required String? text,
  required VoidCallback? function,
  double radius = 10.0,
}) =>
    Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        height: 55.0,
        elevation: 3,
        onPressed: function,
        child: Text(
          isUpperCase ? text!.toUpperCase() : text!,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
Widget defaultFormField({
  TextEditingController? controller,
  required String? labelText,
  required TextInputType? inputType,
  IconData? prefixIcon,
  IconButton? suffixIcon,
  FormFieldValidator<String>? validator,
  bool isPassword = false,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      onChanged: (newValue) {
        print(newValue);
      },
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      validator: validator,
    );
