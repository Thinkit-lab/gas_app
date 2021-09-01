import 'package:flutter/material.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Forget Password  " : "Already a member ? ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
