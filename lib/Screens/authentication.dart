import 'package:brew_crew/Screens/sign_in.dart';
import 'package:brew_crew/Screens/sign_up.dart';
import 'package:flutter/material.dart';
class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView(){
    setState(() {
      showSignIn =!showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
   if(showSignIn){
     return SignIn(toogleView: toggleView);
   }else{
     return SignUp(toogleView:toggleView);
   }
  }
}
