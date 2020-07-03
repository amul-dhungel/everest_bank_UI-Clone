import 'package:flutter/material.dart';

class Database extends StatelessWidget {
  final String mobilenumber;
  final String password;

  Database({this.mobilenumber, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('Mobile Number' + mobilenumber),
        Text('Password' + password),
      ],
    ));
  }
}
