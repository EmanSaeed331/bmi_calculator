import 'package:flutter/material.dart';

class  BMIResultsScreen extends StatelessWidget {
  final double result ;
  final bool isMale ;
  final int age ;
  BMIResultsScreen({
   required this.result,
   required this.isMale,
   required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.keyboard_arrow_left,
          ),
        ),
        title:Text(
          'BMI Results',
      ),
    ),
      body:Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(

              'Gender : ${isMale ? 'Male' : 'Femal' }',
              style:TextStyle(
                  fontSize : 25.0,
                   fontWeight : FontWeight.bold,

                  ),
              ),
          Text(

            'Result : $result',
            style:TextStyle(
              fontSize : 25.0,
              fontWeight : FontWeight.bold,

            ),
          ),
          Text(

            'Age : $age',
            style:TextStyle(
              fontSize : 25.0,
              fontWeight : FontWeight.bold,

            ),
          ),


        ],
    ),
      ),

  );
  }
}
