import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _auth = FirebaseAuth.instance;
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
                hintText: "Enter Passwordvkh",
              ),
              onChanged: (value){
                setState(() {
                  password=value;
                });
              },
            ),
            RaisedButton(
              onPressed: () async {
                try{
                  final newUser =await _auth.createUserWithEmailAndPassword(email: _email,
                      password: password
                  );
                  if(newUser!=null)
                    Navigator.of(context).pushNamed('/');
                }
                catch(e) {
                  print(e);
                }
              },
              child: Text("Sign Up"),
            ),
          ],
        )
    );
  }
}
