 import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
              
              Navigator.pop(context);
            
          },
          icon: const Image(image: AssetImage('assets/images/back_arrow.png', ), width: 30, fit: BoxFit.scaleDown,),),
        // title: const Text('Sign Up' , style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),
        // fontSize: 35,
        // fontWeight: FontWeight.bold,
        
        // ),),
      ),
      body:  SafeArea(
        child: Column(
          children: [

             const Center(
               child: Text('Sign Up' , style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),
                     fontSize: 35,
                     fontWeight: FontWeight.bold,
                     
                     ),),
                     
             ),

             const SizedBox(
              height: 20,),
            
              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/img4.png'),
              )

          ],

        )
      ),
    );
  }
}