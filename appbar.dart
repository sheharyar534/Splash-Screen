import 'package:flutter/material.dart';
class AppBar1 extends StatefulWidget {
  const AppBar1({super.key});

  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: AppBar(
      backgroundColor: Colors.transparent,
      leading: Container(
        color: Colors.white,
        child:  Row(
          children: [
            IconButton(
              onPressed:(){},
               icon:const Icon(Icons.arrow_back_ios_new)
               ),
             const  Text("Back",style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
      actions:  [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.brown,
       child:  IconButton(
        onPressed: () {},
        icon:const Icon(Icons.settings,color: Colors.white,)
           )),
          const SizedBox(
            width: 10,
           ),
           CircleAvatar(
            radius: 30,
            backgroundColor: Colors.orange,
           child:  Align(
              alignment: Alignment.bottomLeft,
                child: IconButton(
                     onPressed: () {},
                     icon:const EndDrawerButton()
             ),
           ),
           ),
      ],
    )
    );
  }}