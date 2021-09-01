import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cmra/model/userModel.dart';

class AuthService{

  UserModel _currentUser;
  UserModel get user =>_currentUser;

  CollectionReference userRef()=> FirebaseFirestore.instance.collection("users");

  Future<UserModel> getUser(String id)async{

   var userData= await userRef().doc(id).get();
   var user=UserModel.fromJson(userData.id, userData.data());
   _currentUser=user;
   return user;



  }
  Future updateUserLastLogin(UserModel userModel){
    userRef().doc(userModel.id).set({"lastLoginDate":Timestamp.now()});


  }
  Future<bool> saveUser(UserModel userModel)async{
    await userRef().doc(userModel.id).set(userModel.toMap());



  }
}