import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class  UserModel{
  String id;
  String firstName;
  String lastName;
  String phoneNumber;
  DateTime dob;
  String gender;
  String martialStatus;
  String invitedId;
  Timestamp registrationDate;
  Timestamp lastLoginDate;
  String photoUrl;
  String email;

  UserModel({this.id, this.firstName, this.lastName, this.phoneNumber, this.dob,
      this.gender, this.martialStatus, this.invitedId,this.registrationDate,this.lastLoginDate,this.photoUrl,this.email});

  UserModel.empty();
  factory UserModel.fromJson(String id,Map<String,dynamic> json,){
    return UserModel(id: id, firstName: json['firstName'],lastName: json['lastName'],phoneNumber: json['phoneNumber'],
    dob: json['dob']==null?null:(json['dob'] as Timestamp).toDate(),
      gender: json['gender'],
      martialStatus: json['martialStatus'],
      invitedId: json["invitedId"]==null?"":json["invitedId"],
      registrationDate: json['registrationDate'],
      lastLoginDate: json['lastLoginDate'],
      photoUrl: json['photoUrl']==null?"":json['photoUrl'],
        email: FirebaseAuth.instance.currentUser.email
    );


  }
  Map<String,dynamic> toMap(){
    return {
      "id":this.id,
      "firstName":this.firstName,
      "lastName":this.lastName,
      "phoneNumber":this.phoneNumber,
      "dob":this.dob,
      "gender":this.gender,
      "martialStatus":this.martialStatus,
      "invitedId":this.invitedId,
      "registrationDate":this.registrationDate,
      "lastLoginDate":this.lastLoginDate,
      "photoUrl":this.photoUrl

    };


  }

}