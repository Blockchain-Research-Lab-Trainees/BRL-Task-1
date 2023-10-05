import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to \n BRL Trainee',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Devlop     Deploy     Distribute ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 46, 139, 193)),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              // height: MediaQuery.of(context).size.height * 0.75,
              // width: MediaQuery.of(context).size.width * 1,
              child: Image.asset('assets/images/img1.png'),
            ),
          ),

          const SizedBox(
                height: 40, // Add some spacing between the images
              ),

              Center(
                child: SizedBox(
                  // width: double.infinity,
                   width: MediaQuery.of(context).size.width * 0.25,
                    //height: MediaQuery.of(context).size.height * 0.75,
                  child: Image.asset('assets/images/img3.png' , fit: BoxFit.scaleDown,), 
                ),
              ),

              const SizedBox(
                height: 60,
              ),
        ],
      ),
    )));
  }
}
