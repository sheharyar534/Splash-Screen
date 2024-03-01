import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> countries =
      ['pakistan', 'india', 'bangladesh', 'America', 'other'] ;
  // ignore: non_constant_identifier_names
  String SelectedCountry = "pakistan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: DropdownButton<String>(
          // ignore: non_constant_identifier_names
          items: countries.map((String DropDownStringItem) {
            return DropdownMenuItem(
                value: DropDownStringItem, child: Text(DropDownStringItem));
          }).toList(),

          onChanged: (String? newCountrySelected) {
            setState(() {
              SelectedCountry=newCountrySelected!;
            });
          },
          value: SelectedCountry,
        ),
      ),
    );
  }
}