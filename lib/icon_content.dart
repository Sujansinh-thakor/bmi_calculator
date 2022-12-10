import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  IconContent({required this.text, required this.ic});

  final String text;
  final IconData ic;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ic,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style:kLabletextstyle
        )
      ],
    );
  }
}