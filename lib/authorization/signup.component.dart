import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Form(child: Column(children: [
    InputChip(label: Text('username')),
    InputChip(label: Text('email')),
    InputChip(label: Text('password')),
  ]));
  
}