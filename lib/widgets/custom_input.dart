import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData prefixIcon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInput({
    super.key,
    required this.prefixIcon,
    required this.placeholder,
    required this.textController,
    this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(0, 5),
                  blurRadius: 5)
            ]),
        child: TextField(
          controller: textController,
          autocorrect: false,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
              prefixIcon: Icon(prefixIcon),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: placeholder),
        ));
  }
}
