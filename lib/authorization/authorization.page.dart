import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teameights_mobile/authorization/signin.component.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({super.key});
  @override
  State<StatefulWidget> createState() => AuthorizationPageState();
}

class AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(child: Signin()),
  );
  
}