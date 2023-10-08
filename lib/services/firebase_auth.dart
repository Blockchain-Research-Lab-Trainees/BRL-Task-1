import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trainee_login/utils/showsnackbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth ;
  FirebaseAuthMethods(this._auth);


  // Email Sign up 

//   Future<void> signUpWithEmailAndPassword({
//     required String email,
//     required String password,
//     required BuildContext context,
  
//   }) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       await sendEmailverifcation(context);
//     } on FirebaseAuthException catch (e) {

//       showSnackBar(context, e.message!);
//     }
// }


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
      // if you want to display your own custom error message
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      showSnackBar(
          context, e.message!); // Displaying the usual firebase error message
    }
  }
// Email Login 

Future<void> emailLogin({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!_auth.currentUser!.emailVerified) {
        // ignore: use_build_context_synchronously
        await sendEmailverifcation(context); 
        // ignore: use_build_context_synchronously
        showSnackBar(context, 'Please verify your email');
        return;
      }
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


  // Google Sign In
Future<void> signInWithGoogle(BuildContext context) async {
    try {

      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleSignInAuthentication = 
          await googleSignInAccount?.authentication;

      if ( googleSignInAuthentication?.accessToken != null && googleSignInAuthentication?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication?.accessToken,
          idToken: googleSignInAuthentication?.idToken,
        );
        
        UserCredential userCredential =
        await _auth.signInWithCredential(credential);

        if (userCredential.user != null) {
          if (userCredential.additionalUserInfo!.isNewUser) {
            await sendEmailverifcation(context);
            showSnackBar(context, 'Please verify your email');
            return;
          }
        }

        // if (!_auth.currentUser!.emailVerified) {
        //   await sendEmailverifcation(context);
        //   showSnackBar(context, 'Please verify your email');
        //   return;
        // }
      }
    
    }on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  } 
}