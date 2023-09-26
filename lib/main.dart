import 'package:flutter/material.dart';
import 'package:teameights_mobile/authorization/authorization.page.dart';
import 'package:teameights_mobile/navbar.component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: ThemeData(useMaterial3: true, colorScheme: const ColorScheme.highContrastDark()),
    home: Scaffold(
      appBar: AppBar(title: const Text('T8S')),
      drawer: const Navbar(),
      body: const AuthorizationPage(),
    ),
  );
  
}

