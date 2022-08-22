// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 188, 212, 1.0),
      body: Column(children: [
        Expanded(
          child: Container(
            child: Image.asset('lib/Images/sklps.png'),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        color: Color.fromRGBO(53, 87, 100, 1.0), fontSize: 20),
                  ),
                  Text(
                    'SIGNUP',
                    style: TextStyle(
                        color: Color.fromRGBO(53, 87, 100, 1.0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.accessibility)),
                          Text('E M A I L')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(Icons.lock)),
                          Text('P A S S W O R D')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color.fromRGBO(53, 87, 100, 1.0), fontSize: 20),
                  )
                ]),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.red,
                      child: Center(
                          child: Text(
                        'S I G N I N',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  child: SignInButton(
                    Buttons.AppleDark,
                    onPressed: () {},
                    text: 'Sign In',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  child: SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                    text: 'Sign In',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  child: SignInButton(
                    Buttons.Facebook,
                    onPressed: () {},
                    text: 'Sign In',
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
