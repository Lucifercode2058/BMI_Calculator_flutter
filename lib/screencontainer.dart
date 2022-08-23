import 'package:flutter/material.dart';
class screen extends StatelessWidget {
  final Color? boxcolor;
  final Widget? boxcont;
  final VoidCallback? onpress;


 screen({ this.boxcolor,this.boxcont, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(


        child: boxcont,
        margin: EdgeInsets.all(15.0),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}