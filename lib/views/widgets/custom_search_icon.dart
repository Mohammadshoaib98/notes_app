import 'package:flutter/material.dart';

class CustomSearchIcons extends StatelessWidget{
  const CustomSearchIcons({super.key});

  @override
  Widget build(BuildContext context) {

return Container(
  height: 46,
  width: 46,
  decoration: BoxDecoration(
    color: Colors.white.withOpacity(.5),
    borderRadius: BorderRadius.circular(16),

  ),
  child: Center(child: Icon(
    Icons.search
    ,size: 28,

  ),),
);
  }

}