import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
 
class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;

  const CustomTextField(
      {super.key, required this.hint,  this.maxLines=1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        helperStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
