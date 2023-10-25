import 'package:flutter/material.dart';
import 'constants.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {super.key, @required this.icon, @required this.onPressed});

  final IconData? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed as void Function()?,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
    );
  }
}
