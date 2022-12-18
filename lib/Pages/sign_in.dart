import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:tikiz/auth/google_sign_in_back.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Sign in to continue'),
                      Text(
                        'Veg',
                        style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.green.shade900,
                                  offset: Offset(3, 3))
                            ]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SignInButton(Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () => SignUp.googleSignUp().then((value) =>
                              Navigator.pushReplacementNamed(context, 'home'))),
                      SignInButton(Buttons.Apple,
                          text: "Sig n up with Apple", onPressed: () {}),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By Signing in you are agreeing to our',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      Text('terms and Privacy Policy',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w700))
                    ],
                  )
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asset/background.png'))),
        ),
      ),
    );
  }
}
