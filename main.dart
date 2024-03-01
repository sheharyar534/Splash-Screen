import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/splishscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApppState();
}

class _MyApppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      SystemChannels.textInput.invokeMethod('TextInput.hide');
        },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),
      ),
    );
  }
}