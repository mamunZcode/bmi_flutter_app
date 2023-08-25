import 'package:flutter/material.dart';
import 'Input_page.dart';
import 'resultScreen.dart';
import 'aboutScreen.dart';


void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData.dark().copyWith(
           primaryColor: Colors.red,
           scaffoldBackgroundColor: Color(0xFF0A0E21),
         ),
       initialRoute: '/',
       routes: {
         '/':(context)=> InputPage(),
         '/resultScreen':(context)=> resultScreen(),
         '/aboutScreen':(context)=>aboutScreen(),
       },
     );
  }
}
