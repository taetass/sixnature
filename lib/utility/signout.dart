import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sixnature_app/screens/signin.dart';

Future<Null> signOutProcess(BuildContext context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.clear();
  //exit(0);
  MaterialPageRoute route = MaterialPageRoute(
    builder: (context) => SignIn(),
  );
  Navigator.pushAndRemoveUntil(context, route, (route) => false);  
}
