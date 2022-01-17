import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  late String _email;
  late String password;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Email",
            ),
            onChanged: (value){
              setState(() {
                _email=value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
            hintText: "Enter Password",
            ),
            onChanged: (value){
              setState(() {
                password=value;
              });
            },
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Sign In"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/signup');
            },
            child: Text("Sign Up"),
          ),
        ],
      )
    );
  }
}
