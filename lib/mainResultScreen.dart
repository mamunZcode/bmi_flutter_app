import 'package:bmi_cclcu/constant_color.dart';
import 'package:flutter/material.dart';
import 're_used.dart';
import 'big_button.dart';
class mainResultcreen extends StatelessWidget{
  mainResultcreen({required this.bmiResult, required this.resultText, required this.interPeration});


  final String bmiResult;
  final String resultText;
  final String interPeration;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Bmi Result',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Expanded(child: Container(
              child: Text('Your Result',style:kResultStyle),
            )
            ),
           Expanded(
             flex: 10,


               child: Reused(
                 cardWidget: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(resultText.toUpperCase(),style:kResultTextStyle),
                     Text(bmiResult,style: kBmiStyle,),
                     Text(interPeration,style: kBodyStyle,
                       textAlign: TextAlign.center,
                     ),


                   ],
                 ),
                 onPress: (){
                 },
                 color: kActiveColor,
               )
           ),
          BigButton(ontap: (){
            Navigator.pop(context);
          },
              text: 'Re-Calculate',),
        ],
      ),
    );
  }
}