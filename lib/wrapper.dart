import 'package:brew_crew/Screens/authentication.dart';
import 'package:brew_crew/Screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if(user == null){

      return Authenticate();
    }else{
      return HomeScreen();
    }
  }
}
