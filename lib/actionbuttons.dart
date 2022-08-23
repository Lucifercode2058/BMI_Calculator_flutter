import 'package:flutter/material.dart';
class buttons extends StatelessWidget {
  final IconData? but;
  final VoidCallback? press;
  const buttons({required this.but, this.press});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xff4c4f5e),
      child: Icon(but),
      onPressed: press,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          height: 60.0,
          width: 60.0
      ),
    );

  }
}
