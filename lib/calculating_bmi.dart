import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({ required this.height,required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String CalculateBMI(){
     _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);

  }
String getResult(){
 
  if(_bmi >=25.0){
    return "overWeight";
  }
  else if(_bmi>18.5)
  {
    return "normal";
  }
  else{
    return "Under Weight";
  }
}

String getInterPretation(){
  
   if(_bmi >=25){
    return "You have a Higher than normal body weight. Try to exercise more.";
  }
  else if(_bmi>18.5)
  {
    return "You have a Normal Body weight. Good job!";
  }
  else{
    return "You have a lower than normal body weight. You can eat a bit more.";
  }
}

}