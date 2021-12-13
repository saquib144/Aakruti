import 'package:aakruti1/Authentication/opt_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber(BuildContext context, number) async {
    final PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential credential) async {
      await auth.signInWithCredential(
          credential); //after verification coplete nedd to

    };

    final PhoneVerificationFailed verificationFailed = (
        FirebaseAuthException e) {
      //if verification failed , it will show the reason
      if (e.code == 'invalid-phone-number') {
        print('The Provided phone number is not valid.');
      }
      print('The error is ${e.code}');
    };

    final PhoneCodeSent codeSent = (String verId, int resendToken) async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=>OTPScreen(number: number,),),);
    } as PhoneCodeSent ;

    try{
      auth.verifyPhoneNumber(phoneNumber: number,
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId){
        print(verificationId);
      });
    }catch(e){
      print('Error ${e.toString()}');
    }

  }
}
