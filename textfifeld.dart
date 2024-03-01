import 'package:flutter/material.dart';

class TextField1 extends StatefulWidget {
  const TextField1({super.key});

  @override
  State<TextField1> createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: 350,
        height: 70,
        
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child:  const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))
            )
          ),
        ),
      ),
    );
  }
}