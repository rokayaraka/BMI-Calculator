import 'package:flutter/material.dart';
const lebelTextStyle = TextStyle(fontSize: 18.0,
        color: Color(0xFF8D8E98),
        );

class ReusableCardChild extends StatelessWidget {
  
  ReusableCardChild({required this.icono, required this.lebel});
  final IconData icono;
  final String lebel;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icono,
        size: 80.0,),
        SizedBox(
          height: 15.0,
        ),
        Text(lebel, 
        style:lebelTextStyle,),
      ],
    );
  }
}