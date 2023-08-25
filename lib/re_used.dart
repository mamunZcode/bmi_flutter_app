import 'package:flutter/material.dart';
class Reused extends StatelessWidget {
  Reused({required this.color, required this.cardWidget, required this.onPress});
  final Function onPress;
  final Color color;
  final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
    },
      child: Container(
          child: cardWidget,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color:color,
              borderRadius: BorderRadius.circular(20.0),
          ),
      ),
    );
  }
}
