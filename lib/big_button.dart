import 'package:flutter/material.dart';
import 'constant_color.dart';

class BigButton extends StatelessWidget {
  const BigButton({ required this.ontap, required this.text});

  final Function ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ontap();
      },
      child: Container(
        child: Center(
            child: Text(text)
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomColor,
        padding: EdgeInsets.only(bottom: 5.0),
        height:kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}