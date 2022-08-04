import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  final String category;
  const CategoryBar({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
            color: Color(0x2C2B2BFF),
            margin: EdgeInsets.zero,
            elevation: 0,
            child: ListTile(
              dense: true,
              title: Text(
                category,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
            )),
      ],
    );
  }
}
