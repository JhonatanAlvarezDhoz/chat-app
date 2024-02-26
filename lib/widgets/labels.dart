import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String firstLabelText;
  final String secondLabelText;

  const Labels({
    super.key,
    required this.route,
    required this.firstLabelText,
    required this.secondLabelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            firstLabelText,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Text(secondLabelText,
                style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 15.8,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
