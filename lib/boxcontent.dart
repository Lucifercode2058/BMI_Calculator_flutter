import 'package:flutter/material.dart';
class boxcont extends StatelessWidget {
  final IconData logo;
  final String label;
  boxcont(@required this.logo, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          logo,
          size: 100,
          color: Colors.white,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'DynaPuff'),
        )
      ],
    );
  }
}
