// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.prefix,
      this.suffix,
      this.maxLines})
      : super(key: key);
  final TextEditingController controller;
  final Widget? prefix;
  final Widget? suffix;
  final int? maxLines;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      validator: (value) {
        if (value!.isEmpty) {
          return "Type something";
        } else {
          return null;
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyle(fontSize: 12, fontFamily: "Alexandria"),
      controller: controller,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        suffixIcon: suffix,
        focusColor: primaryC3,
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 14, fontFamily: "Alexandria"),
        prefixIcon: prefix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xffD2D2D2)
              // color: primaryC3
              ),
        ),
        errorStyle: TextStyle(fontSize: 12, fontFamily: "Alexandria"),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xffD2D2D2)),
        ),
        hoverColor: Colors.white,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: primaryC3),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xffD2D2D2)),
        ),
      ),
    );
  }
}
