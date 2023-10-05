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
            
          },
          icon: const Image(image: AssetImage('assets/images/back_arrow.png', ), height: 20, width: 20, fit: BoxFit.scaleDown,),),
        title: const Text('Sign Up'),
      ),
    );
  }
}