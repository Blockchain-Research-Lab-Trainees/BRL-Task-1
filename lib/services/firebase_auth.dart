import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trainee_login/utils/showsnackbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth ;
  FirebaseAuthMethods(this._auth);


  // Email Sign up 

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required BuildContext context,
  
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailverifcation(context);
    } on FirebaseAuthException catch (e) {

      showSnackBar(context, e.message!);
    }
}

// Email Verification

 Future<void> sendEmailverifcation(BuildContext context) async {
    try {
      await _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Verification Email has been sent');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  } 

}