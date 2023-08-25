import 'package:flutter/material.dart';
import 're_used.dart';

class aboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black87,
                height: 120.0,
                width: 80.0,
                margin: EdgeInsets.only(left: 50.0, right: 50.0),
                child: Image(
                  image: AssetImage('assets/aboutme.png'),
                ),
              ),
              Row(
                children: [
                  Text('Developer Name: MD Muntasir Mamun'),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Text('Contact No: 01765698686'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
