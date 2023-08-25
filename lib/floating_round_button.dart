import 'package:flutter/material.dart';

class FlotingRoundButton extends StatelessWidget{
  const FlotingRoundButton({required this.icon,required this.onPress,required this.color});
  final IconData icon;
  final Function onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        onPress();
      },


      shape:CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 0.0,
      fillColor: color,
      child: Icon(icon),
    );
  }
}