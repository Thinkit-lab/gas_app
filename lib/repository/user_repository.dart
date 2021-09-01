import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:cmra/services/AuthService.dart';

import 'package:cmra/model/userModel.dart';



enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated,invalid_email,wrong_password,user_not_found,too_many_requests,operation_not_allowed,user_disabled,unknown


}

class UserRepository extends GetxController {
  FirebaseAuth _auth=FirebaseAuth.instance;
  User _user;

  Status _status = Status.Uninitialized;
  String _error;
  StreamSubscription _userListener;
  UserModel  _fsUser;
  final status=Status.Uninitialized.obs;
//  Device currentDevice;

  bool _loading;

  CollectionReference userRef() =>
      FirebaseFirestore.instance.collection('users');

  String get error => _error;

  Status get getStatus => _status;

  User get fbUser => _user;

  UserModel get user => _fsUser;

  bool get isLoading => _loading;

  Future<bool> signIn(String email, String password) async {
    try {
                _status = Status.Authenticating;

                status(Status.Authenticating);
      UserCredential userCredential=await _auth.signInWithEmailAndPassword(email: email, password: password);

      _fsUser=await getUser(userCredential.user.uid);
       AuthService().updateUserLastLogin(_fsUser);
      if(_fsUser!=null) {
        status(Status.Authenticated);
      }
      else {
        _status = Status.Unauthenticated;
        status(Status.Unauthenticated);
      }_error = '';
      return true;
    }

    catch (e) {
      switch ((e as FirebaseAuthException).code) {
        case 'invalid_email':
    status(Status.invalid_email);
          break;
        case 'unknown':
//
//_status=Status.
        status(Status.unknown);
          break;
        case 'wrong-password':
          status(Status.wrong_password);

//          _status=Status.wrong_password;

          break;
        case 'user-not-found':
          print("error user-not-found");
//          _status=Status.user_not_found;
             status(Status.user_not_found);
          break;
        case 'user_disabled':
//          _status=Status.user_disabled;
            status(Status.user_disabled);
          break;
        case 'too-many-requests':
//          _status=Status.too_many_requests;
           status(Status.too_many_requests);
          break;
        case 'operation_not_allowed':
//          _status=Status.operation_not_allowed;
             status(Status.operation_not_allowed);
          break;
        default:

          break;
      }
      print(e.toString());
      return null;


//      _error = e.message;
//      _status = Status.Unauthenticated;
//      notifyListeners();
//      return false;
    }
  }


  Future<bool> signUp(String email, String password,UserModel userModel) async {
    try {
      status(Status.Authenticating);


      UserCredential userCredential= await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
userModel.id=userCredential.user.uid;
    await  AuthService().saveUser(userModel);
      _error = '';
      status(Status.Authenticated);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    }
    catch ( ex) {
      _error =ex.toString();
      print(_error);
       status(Status.Unauthenticated);

      return false;
    }
  }


  Future signOut() async {
    _auth.signOut();

    _status = Status.Unauthenticated;
    _fsUser = null;
    _userListener.cancel();
   status(Status.Unauthenticated);
    return Future.delayed(Duration.zero);
  }

//  Future<void> _onAuthStateChanged(User firebaseUser) async {
//    if (firebaseUser == null) {
//      _status = Status.Unauthenticated;
//      _fsUser = null;
//      _user = null;
//    } else {
//      _user = firebaseUser;
//      _saveUserRecord();
//      _userListener = userDBS.streamSingle(_user.uid).listen((user) {
//        _fsUser = user;
//        _loading = false;
//        notifyListeners();
//      });
//      _status = Status.Authenticated;
//    }
//    notifyListeners();
//  }

//  Future<void> _saveUserRecord() async {
//    if (_user == null) return;
//    PackageInfo packageInfo = await PackageInfo.fromPlatform();
//    int buildNumber = int.parse(packageInfo.buildNumber);
//    UserModel user = UserModel(
//      email: _user.email,
//      name: _user.displayName,
//      photoUrl: _user.photoURL,
//      id: _user.uid,
//      registrationDate: DateTime.now().toUtc(),
//      lastLoggedIn: DateTime.now().toUtc(),
//      buildNumber: buildNumber,
//      introSeen: false,
//    );
//    UserModel existing = await userDBS.getSingle(_user.uid);
//    // if (existing == null) {
//    //   await userDBS.create(user, id: _user.uid);
//    //   _fsUser = user;
//    // } else {
//    //   await userDBS.updateData(_user.uid, {
//    //     UserFields.lastLoggedIn: FieldValue.serverTimestamp(),
//    //     UserFields.buildNumber: buildNumber,
//    //   });
//    // }
//
//    _saveDevice(user);
//  }
//
//  Future<void> _saveDevice(UserModel user) async {
//    DeviceInfoPlugin devicePlugin = DeviceInfoPlugin();
//    String deviceId;
//    DeviceDetails deviceDescription;
//    if (Platform.isAndroid) {
//      AndroidDeviceInfo deviceInfo = await devicePlugin.androidInfo;
//      deviceId = deviceInfo.androidId;
//      deviceDescription = DeviceDetails(
//        device: deviceInfo.device,
//        model: deviceInfo.model,
//        osVersion: deviceInfo.version.sdkInt.toString(),
//        platform: 'android',
//      );
//    }
//    if (Platform.isIOS) {
//      IosDeviceInfo deviceInfo = await devicePlugin.iosInfo;
//      deviceId = deviceInfo.identifierForVendor;
//      deviceDescription = DeviceDetails(
//        osVersion: deviceInfo.systemVersion,
//        device: deviceInfo.name,
//        model: deviceInfo.utsname.machine,
//        platform: 'ios',
//      );
//    }
//    PackageInfo packageInfo = await PackageInfo.fromPlatform();
//    int buildNumber = int.parse(packageInfo.buildNumber);
//    final nowMS = DateTime
//        .now()
//        .toUtc()
//        .millisecondsSinceEpoch;
//    if (user.buildNumber != buildNumber) {
//      userDBS.updateData(user.id, {
//        UserFields.buildNumber: buildNumber,
//        UserFields.lastUpdated: nowMS,
//      });
//    }
//  }
  Future<UserModel> getUser(String id)async{

   return AuthService().getUser(id);

  }
}