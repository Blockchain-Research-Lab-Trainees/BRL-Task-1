import 'package:flutter/material.dart';
import 'package:trainee_login/screens/home_screen.dart';
//import 'package:trainee_login/screens/welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      /*




      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
              
              Navigator.pop(context);
            
          },
          icon: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Image(image: AssetImage('assets/images/back_arrow.png', ), width: 30, fit: BoxFit.scaleDown,),
          ),),

        


        title: const Text('Sign Up' , style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),
        fontSize: 35,
        fontWeight: FontWeight.bold,



        */



      body: SafeArea(
          child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/back_arrow.png',
                      ),
                      width: 30,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Color.fromARGB(255, 95, 95, 95),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),



            /*
        
              
               const Center(
                 child: Text('Sign Up' , style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),
                       fontSize: 35,
                       fontWeight: FontWeight.bold,
                       
                       ),),
                       
               ),
        
               */



            const SizedBox(
              height: 20,
            ),


            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/img4.png'),
            ),


            const SizedBox(
              height: 20,
            ),


            const MyTextField(
              hintText: 'Enter your Name',
              inputType: TextInputType.name,
              labelText2: 'Name',
            ),


            const SizedBox(
              height: 10,
            ),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),


            const SizedBox(
              height: 10,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  hintText: 'Enter your Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.black54),
                ),
              ),
            ),


            const SizedBox(
              height: 30,
            ),


            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),


                child: Row(
                  children: [
                  

                  /*


                  Expanded(
            
                      child: MySignUp(
                        buttonName: 'Login',
                        onTap: () {},
                        bgColor: Colors.black,
                        textColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                      
                    ),


                  */



                    Expanded(
                      child: Login(
                        buttonName: 'Login',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreenPage(
                                title: 'homescreen',
                              ),
                            ),
                          );
                        },
                        bgColor: Colors.black,
                        textColor: Colors.white,
                      ),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}




// MytextField Widget 



class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hintText,
    required this.inputType,
    required this.labelText2,
  });

  final String hintText;
  final TextInputType inputType;
  final String labelText2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          labelText: labelText2,
          labelStyle: const TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}




// Login Widget



class Login extends StatelessWidget {
  const Login({
    Key? key,
    required this.buttonName,
    required this.onTap,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onTap;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: TextButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(12),
          shadowColor: MaterialStateProperty.all(Colors.black),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.transparent,
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 20, color: textColor),
        ),
      ),
    );
  }
}
