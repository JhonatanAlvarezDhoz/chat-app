import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String text;
  const Logo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        width: 180,
        child: Column(
          children: [
            Image(image: AssetImage('assets/img/tag-logo.png')),
            SizedBox(height: 20),
            Text(
              text,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
