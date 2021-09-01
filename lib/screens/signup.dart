import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:cmra/Screens/login.dart';
import 'package:cmra/components/social_icon.dart';
import 'package:cmra/repository/user_repository.dart';
import 'package:cmra/components/already_have_an_account_acheck.dart';
import 'package:cmra/components/rounded_button.dart';
import 'package:cmra/components/rounded_input_field.dart';
import 'package:cmra/components/rounded_password_field.dart';
import 'package:cmra/model/userModel.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cmra/utils/constants.dart';
import 'package:cmra/utils/utils.dart';


class Body extends GetView<UserRepository> {


  final _auth = FirebaseAuth.instance;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String birthday;
  String gender;
  String maritalStatus;
  String refer;
  String password;
  DateTime birthdayDate;
  DateTime currentTime;
  TextEditingController _firstNameController=TextEditingController();
  TextEditingController _lastNameController=TextEditingController();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _phoneNumberController=TextEditingController();
  TextEditingController _birthdayController=TextEditingController();
  TextEditingController _genderController=TextEditingController();
  TextEditingController _martialStatusController=TextEditingController();
  TextEditingController _referralOptionController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx((){
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Status status=controller.status.value;
        if(status==Status.unknown){

          utils.showAlertDialog(context, "Internet Connection", "No Internet Conection");

        }else if(status==Status.Authenticated){


        }
      });

      return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset(
                  "assets/images/image 2.png",
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "SIGN UP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Lato'),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "First Name",
                controller: _firstNameController,
                inputType: TextInputType.name,
                onChanged: (value) {
                  firstName = value;
                },
              ),
              RoundedInputField(
                hintText: "Last Name",

                controller: _lastNameController,
                inputType: TextInputType.name,
                onChanged: (value) {
                  lastName = value;
                },
              ),
              RoundedInputField(
                hintText: "Email Address",
                controller: _emailController,
                inputType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
              ),
              RoundedInputField(
                hintText: "Phone Number",
                controller: _phoneNumberController,
                inputType: TextInputType.phone,
                onChanged: (value) {
                  phoneNumber = value;
                },
              ),
              RoundedInputField(
                controller: _birthdayController,
                hintText: "Birthday",
                AllowClickable: true,
                onClick: (){


                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      theme: DatePickerTheme(
                          cancelStyle: const TextStyle(
                              color: Color(TEXT_COLOR_PRIMARY), fontSize: 16),
                          headerColor: Color(COLOR_HEADER),
                          backgroundColor: Color(COLOR_BACKGROUND),
                          itemStyle: TextStyle(color: Colors.white, fontSize: 18),
                          doneStyle:
                          TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                        birthdayDate = date;
                        _birthdayController.text =
                        birthdayDate.toLocal().toString().split(" ")[0];


                      }, onConfirm: (date) {
                        print('confirm $date');
                        currentTime = date;
                      },
                      currentTime:
                      (currentTime != null) ? currentTime : DateTime.now(),
                      locale: LocaleType.en);

                },
                onChanged: (value) {
                  birthday = value;
                },
              ),
              RoundedInputField(
                controller: _genderController,
                AllowClickable: true,
                onClick: (){

                  _onGenderClick(context);
                },
                hintText: "Gender",
                onChanged: (value) {
                  gender = value;
                },
              ),
              RoundedInputField(
                controller: _martialStatusController,
                AllowClickable: true,
                onClick: (){
                  _onMartialClick(context);

                },
                hintText: "Marital Status",
                onChanged: (value) {
                  maritalStatus = value;
                },
              ),
              RoundedInputField(
                controller: _referralOptionController,
                hintText: "Who invited you into LBD (Optional)",
                onChanged: (value) {
                  refer = value;
                },
              ),
              RoundedPasswordField(
                controller: _passwordController,
                onChanged: (value) {
                  password = value;
                },
              ),
              RoundedButton(
                text: "SIGNUP",
                isLoading: controller.status.value==Status.Authenticating,
                press: () async{
                  try {
                    UserModel userModel=UserModel(firstName: _firstNameController.text,lastName: _lastNameController.text,
                      phoneNumber: _phoneNumberController.text,dob: birthdayDate,gender: _genderController.text,
                      martialStatus: _martialStatusController.text,invitedId: _referralOptionController.text,registrationDate:Timestamp.now() ,
                      lastLoginDate:Timestamp.now() , photoUrl: "",);
                    controller.signUp(_emailController.text, _passwordController.text, userModel);

                    // final newUser = await _auth.createUserWithEmailAndPassword(
                    //     email: email, password: password);
                    // if (newUser != null){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context){
                    //     return SideBar();
                    //   },
                    //   ),
                    //   );
//  await  UserRepository().signUp(email, password);
//       Get.off(SideBar());
                  }
                  catch (e){
                    print(e);
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
              ),
//            OrDivider(),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                SocalIcon(
//                  iconSrc: "assets/icons/facebook.svg",
//                  press: () {},
//                ),
//                SocalIcon(
//                  iconSrc: "assets/icons/twitter.svg",
//                  press: () {},
//                ),
//                SocalIcon(
//                  iconSrc: "assets/icons/google-plus.svg",
//                  press: () {},
//                ),
//              ],
//            )
            ],
          ),
      );
    }
    );
  }
  _onGenderClick(BuildContext context) {
    final action = CupertinoActionSheet(
      message: Text(
        "Gender",
        style: TextStyle(fontSize: 18.0),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text("Female", style: TextStyle(color: Colors.black)),
          isDefaultAction: false,
          onPressed: () {
            Navigator.pop(context);
            _genderController.text  = 'Female';
//          setState(() {});
          },
        ),
        CupertinoActionSheetAction(
          child: Text("Male", style: TextStyle(color: Colors.black)),
          isDestructiveAction: false,
          onPressed: () {
            Navigator.pop(context);
            _genderController.text = 'Male';
//          setState(() {});
          },
        ),

      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text("Cancel", style: TextStyle(color: Colors.black)),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    showCupertinoModalPopup(context: context, builder: (context) => action);
  }
  _onMartialClick(BuildContext context) {
    final action = CupertinoActionSheet(
      message: Text(
        "Martial Status",
        style: TextStyle(fontSize: 18.0),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text("Single", style: TextStyle(color: Colors.black)),
          isDefaultAction: false,
          onPressed: () {
            Navigator.pop(context);
            _martialStatusController.text  = 'Single';
//          setState(() {});
          },
        ),
        CupertinoActionSheetAction(
          child: Text("Engaged", style: TextStyle(color: Colors.black)),
          isDestructiveAction: false,
          onPressed: () {
            Navigator.pop(context);
            _martialStatusController.text = 'Engaged';
//          setState(() {});
          },
        ),
        CupertinoActionSheetAction(
          child: Text("Married", style: TextStyle(color: Colors.black)),
          isDestructiveAction: false,
          onPressed: () {
            Navigator.pop(context);
            _martialStatusController.text = 'Married';
//          setState(() {});
          },
        ),

        CupertinoActionSheetAction(
          child: Text("Divorced", style: TextStyle(color: Colors.black)),
          isDestructiveAction: false,
          onPressed: () {
            Navigator.pop(context);
            _martialStatusController.text = 'Divorced';
//          setState(() {});
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text("Cancel", style: TextStyle(color: Colors.black)),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    showCupertinoModalPopup(context: context, builder: (context) => action);
  }

}
