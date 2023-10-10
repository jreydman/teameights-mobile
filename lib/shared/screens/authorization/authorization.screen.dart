import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/components/navbar/navbar.component.dart';
import 'package:teameights_mobile/shared/screens/authorization/signin.component.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});
  @override
  State<StatefulWidget> createState() => AuthorizationScreenState();
}

class AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(),
    drawer: const T8sNavbar(),
    body: const Signin(),
  );
  
}