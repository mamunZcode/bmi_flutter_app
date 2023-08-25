
import 'package:flutter/material.dart';


class resultScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     backgroundColor: Colors.red,
     appBar: AppBar(title: Text("Bmi Result Bar",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
     backgroundColor: Colors.red,
     ),
     drawer: Drawer(
       backgroundColor: Colors.orange,
       child: ListView(
         children: [
           DrawerHeader(

             child:
           Text('Bmi Slide',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),),
           decoration: BoxDecoration(
             color: Colors.redAccent,
             shape:BoxShape.circle,
             image: DecorationImage(
                 image:AssetImage('assets/calculator.png')
             ),
           ),
           ),
           ListTile(
             title: Text('Home',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black87),),
             onTap: (){
               Navigator.pushNamed(context, '/');

             },
             hoverColor: Colors.redAccent,
           ),
           ListTile(
             title: Text('about',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black87),),
             onTap: (){

                   Navigator.pushNamed(context, '/');
             },
             hoverColor: Colors.redAccent,
           ),
           ListTile(
             title: Text('Contact',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black87),),
             onTap: (){
               Navigator.pushNamed(context, '/');

             },
             hoverColor: Colors.redAccent,
           ),
           ListTile(
             title: Text('Top Menu',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black87),),
             onTap: (){
             },
             hoverColor: Colors.redAccent,
           ),
         ],
       ),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("data",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data1",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data2",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data3",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data4",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data5",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data6",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data7",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data8",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data9",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
           Text("data10",style: TextStyle(color: Colors.black,fontSize: 30.0,fontStyle: FontStyle.italic),),
         ],
       ),
     ),
     );
  }
}

