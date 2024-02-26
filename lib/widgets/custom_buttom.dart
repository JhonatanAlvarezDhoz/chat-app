import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;

  final Function() onTap;

  CustomButtom({
    required this.text,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.blue),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 16,
              letterSpacing: 0.5),
        )),
      ),
    );
  }
}
