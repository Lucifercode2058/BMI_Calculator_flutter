import 'main.dart';
import 'package:flutter/material.dart';
class bootomnav extends StatelessWidget {
  const bootomnav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 40),
        child: Center(
            child: Text(
              'Recalculate',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 45,
                fontFamily: 'DynaPuff'
              ),
            )),
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
        height: 85,
        width: double.infinity,
      ),
    );
  }
}
