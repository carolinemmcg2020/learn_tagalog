import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/email_login_user_model.dart';
import 'package:learn_tagalog/models/loginusermodel.dart';

class EmailLoginService {
  EmailLoginService(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;
  final userRef = FirebaseFirestore.instance.collection("users");

 EmailUserModel _userModel;

  EmailUserModel get loggedInUserModel => _userModel;

  //Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signInWithEmail({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return "Signed In";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "No user fuond for that email.";
      } else if (e.code == 'wrong-password') {
        return "Wrong password provided for that user.";
      } else {
        return "Something went wrong";
      }
    }
  }

  Future<String> signUpWithEmail({String email, String password}) async {
    try {
     await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

     UserCredential userCreds = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
     if (userCreds !=null){
       //await userRef.doc(userCreds.user.uid).set(_userModel.toMap(_userModel));
       _userModel = EmailUserModel(email: userCreds.user.email, uid: userCreds.user.uid);
     }
     //TODO Make model class for email sign ups
      return "Signed Up!";
    } on FirebaseAuthException catch (e){
      if(e.code == 'weak-password'){
        return "The password that you have provided is too weak.";
      } else if( e.code == 'email-already-in-use'){
        return "The account already exists for that email.";
      } else {
        return "Something went wrong.";
      }
    }  catch (e){
      print(e);
    }
  }


  Future<void> signEmailOut() async{
    await _firebaseAuth.signOut();
  }

}
