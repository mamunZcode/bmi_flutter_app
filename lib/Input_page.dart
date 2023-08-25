
import 'package:bmi_cclcu/mainResultScreen.dart';
import 'package:flutter/material.dart';
import 're_used.dart' show Reused;
import 'icon_Widget.dart' show iconWidget;
import 'constant_color.dart';
import 'big_button.dart';
import 'floating_round_button.dart';
import 'calculation.dart';



class InputPage extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {
    return _InputPage();
  }

}
// enums system
enum GenderType {
  male,
  female,
}
class _InputPage extends State<InputPage> {

 GenderType selectedGender= GenderType.male;

 int height = 180;

 int weight = 60;

 int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(fontWeight: FontWeight.w900,color: Color(0xFF5a973a)),textAlign:TextAlign.center,),
        backgroundColor: Color(0xFF0A0E21),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.pushNamed(context,'/aboutScreen');
          },
              icon: Icon(Icons.line_weight_rounded)
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Reused(
                  onPress: () {
                   setState(() {
                     selectedGender= GenderType.male;
                   });
                  },
                  //Ternary Operator
                  color: selectedGender == GenderType.male ? kInactiveColor:kActiveColor,
                  cardWidget: iconWidget(icon: Icons.male, label: 'Male'),
                ),
              ),
              Expanded(
                child: Reused(
                  onPress: () {
                       setState(() {
                         selectedGender=GenderType.female;
                       });
                  },
                  color: selectedGender == GenderType.female ? kInactiveColor:kActiveColor,
                  cardWidget:iconWidget(icon: Icons.female, label:'Female'),
                ),
              ),
            ],
          )
          ),

          Expanded(
            child: Reused(
              color: kActiveColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height', style:kLabelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),style: kstyle
                    ),
                    Text('cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18.0),
                    overlayColor: Colors.black12,
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    thumbColor: Colors.pinkAccent,
                    activeTrackColor: Colors.orangeAccent,
                    inactiveTrackColor: Colors.green,

                  ),
                  child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue){
                        setState(() {
                          height= newValue.round();
                        });
                  },
                    min: 120,
                    max: 220,
                    mouseCursor: SystemMouseCursors.click,
                    divisions: 100,
                  ),
                ),
            ],
         ),
              onPress: (){},
            ),
          ),

          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Reused(cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Weight',style: kLabelTextStyle,),

                    Text(weight.toString(),style: kstyle,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlotingRoundButton(icon: Icons.minimize_rounded,

                          onPress: (){
                             setState(() {
                               weight--;
                             });
                          },
                          color: kActiveColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FlotingRoundButton(icon: Icons.add,
                         onPress: (){
                          setState(() {
                            weight++;
                          });
                         },
                          color: kActiveColor,
                        ),
                      ],
                    )
                  ],
                ) ,
                 color: kActiveColor,
                  onPress: (){
                  },
                ),
              ),
              Expanded(
                child: Reused(

                  color: kActiveColor,
                  onPress: (){

                  }, cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Age',style: kLabelTextStyle,),

                    Text(age.toString(),style: kstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlotingRoundButton(icon: Icons.minimize_rounded,
                          onPress: (){
                          setState(() {
                            age--;
                          });
                          },
                          color: kActiveColor,
                        ),
                        SizedBox(
                          width: 10.0,

                        ),
                        FlotingRoundButton(icon: Icons.add,
                          onPress: (){
                          setState(() {
                            age++;
                          });
                          },
                          color: kActiveColor,
                        ),
                      ],
                    )
                  ],
                ) ,
                    ),
              ),
            ],
          )),
          BigButton(
            ontap: (){
              BMICalculator calc = BMICalculator(weight: weight, height: height);
              calc.height;
              calc.weight;
              Navigator.push(
                context,
                  MaterialPageRoute(
                    builder:  (context) => mainResultcreen(
                        bmiResult: calc.bmiCalculate(),
                        resultText: calc.getresult(),
                        interPeration: calc.getInterparation()
                    ),
                  )
              );
          },
            text: 'Bmi Calculate',
          ),


        ],
      ),
    );
  }
}
// Created Own Class ---
// Widget





