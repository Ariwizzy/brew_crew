import 'package:brew_crew/Services/auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          GestureDetector(
            onTap: ()async{
              await _authService.signOut();
            },
            child: Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}
