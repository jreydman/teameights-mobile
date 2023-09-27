import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) => const Form(child: Column(children: [
    InputChip(label: Text('username')),
    InputChip(label: Text('email')),
    InputChip(label: Text('password')),
  ]));
  
}