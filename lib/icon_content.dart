import 'package:flutter/material.dart';

class ReusableGender extends StatelessWidget {
  ReusableGender({required this.genderIcon, required this.genderName});

  final IconData genderIcon;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderName,
          style: TextStyle(
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
