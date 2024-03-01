import 'package:flutter/material.dart';
import 'package:flutter_application_1/mix/dropdown.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child:SingleChildScrollView(
       child: Column(
       mainAxisAlignment: MainAxisAlignment.center, 
        children: [
         const  Text(
          "Register",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 250,
              color: Colors.transparent,
              child: const  Text( maxLines:2,
                  overflow:TextOverflow.ellipsis,
                     "Choose your country & enter your \n      mobile number to continue",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        const SizedBox(height: 40),
      
        Container(
          margin: const EdgeInsets.all(20),
          height: 50,
        
          width:MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Colors.amber),
          child: const DropDown()
        ),
        const SizedBox(height: 20),
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          height: 50,
         width:MediaQuery.of(context).size.width,
         margin: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              prefix: Row(mainAxisSize: MainAxisSize.min, children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('+92'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(height: 25, width: 2, color: Colors.black26),
                ),
              ]),
              labelText: "Your mobile number",
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          width: 375,
          color: Colors.transparent,
          child: Row(children: [
           const Icon(Icons.check_circle_outline),
             const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Expanded(
                child: RichText(
                  text: const TextSpan(
                    text: 'By signing up, you agree the ',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'terms of \n service ',
                      style: TextStyle(color: Colors.amber),
                      ),
                      TextSpan(
                        text: 'and '
                      ),
                      TextSpan(
                        text: ' private poloicy',
                      style: TextStyle(color: Colors.amber),
                      )
                    ]
                  )),
              ),
            )
          ]),
        ),
       const SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 370,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.yellow // Change the background color here
                  ),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Next"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.arrow_forward)
                ],
              )),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          color: Colors.transparent,
          width: 300,
          child: const Row(
              children: <Widget>[
          Expanded(
              child: Divider()
          ),      
          
          Text("OR"),        
          
          Expanded(
              child: Divider()
          ),
              ]
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
       const       SizedBox(
          width: 20,
        ),
            Stack(
              children:[ 
                const CircleAvatar(
                  radius: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 12,
                    child: InkWell(
                      onTap: () {
                      },
                      child: const Image(image: AssetImage("lib/images/gmail.png")),
                    ),
                  ),
                ),
              ]
            ),
            
              const SizedBox(
          width: 20,
        ),
          CircleAvatar(
              radius: 20,
              child:InkWell(onTap: () {
                
              },child: const  Icon(Icons.facebook_rounded)),
            ),
            const SizedBox(
          width: 20,
        ),
            CircleAvatar(
              radius: 20,
              child: InkWell(onTap: (){},child: const Icon(Icons.apple_rounded)),
            ),
          ],
        ),
       ),
      const SizedBox(
        height: 30,
       ),
       const Center(
        child: Column(
          children: [
            Text("Already hav an account?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Sign in",style: TextStyle(color: Colors.amber,fontSize: 18),),
          
          ],
        ),
       ),

          
      ]),
        )
    )
    );
  }
}