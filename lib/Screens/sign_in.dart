import 'package:brew_crew/Screens/sign_up.dart';
import 'package:brew_crew/Services/auth.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  final Function toogleView;
  SignIn({this.toogleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("Sign In Anon"),
        backgroundColor: Colors.brown[400],
        actions: [
          FlatButton.icon(
              onPressed: () {
                widget.toogleView();
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            TextFormField(
              onChanged: (val){
                setState(() {
                  email = val;
                });
              },
            ),
            TextFormField(
              obscureText: true,
              onChanged: (val){
                setState(() {
                  password = val;
                });
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
                color: Colors.pink,
                child: Text("Sign In",style: TextStyle(color: Colors.white),),
                onPressed: ()async{
                  print(email);
                  print(password);
                })
          ],
        ),
      ),
    );
  }
}

