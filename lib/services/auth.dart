import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future SignInAnon () async{
    try{
      UserCredential credential =
      await _auth.signInAnonymously();
      User user = credential.user;
    }catch (e){
      print(e.toString());
          return null;
    }
}
}