import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category ({super.key , this.text, this.color, this.onTap});
  final String? text;
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 19,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
