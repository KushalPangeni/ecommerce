import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  UserCredential? userCredential;

  Future<UserCredential?> loginMethod({email, password, context}) async {
    try {
      userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      } else {
        VxToast.show(context, msg: e.toString());
      }
    }
    return userCredential;
  }

  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  Future<UserCredential?> signupMethod({context, email, password}) async {
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      } else {
        VxToast.show(context, msg: e.toString());
      }
    }
    return userCredential;
  }

  storeUserData({name, password, email}) {
    DocumentReference store = firestore.collection(userCollection).doc();
    log("Data stored successfully.");
    store.set({'name': name, 'password': password, 'email': email, 'imageUrl': '', 'id': currentUser!.uid});
    log("Data stored successfully.");
  }
}
