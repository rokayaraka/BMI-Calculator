import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

const resultText = Text('yo yo');
class result extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("raka"),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return InputPage();
          }));
        }, 
        child: Text("yo yo"),)
      ],
      
    );
  }
}