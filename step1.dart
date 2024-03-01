import 'package:flutter/material.dart';

class SteP1 extends StatefulWidget {
  const SteP1({super.key});

  @override
  State<SteP1> createState() => _SteP1State();
}

class _SteP1State extends State<SteP1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text("Upload Current Image",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          Stack(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage("lib/images/avataar.jpg"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.camera_alt_outlined),
                ),
              )
            ],
          )
        
        ],
      ),
    );
  }
}