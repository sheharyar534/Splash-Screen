import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 320),
        child: CheckboxListTile(
          value: isChecked,
           onChanged: (val){
            setState(() {
              isChecked=val!;
            });
           }),
      )
    );
  }
}