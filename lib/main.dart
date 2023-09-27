import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/data/variables.dart';
import 'package:teameights_mobile/shared/pages/authorization/authorization.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: ThemeData(
        fontFamily: 'Rubik',
        //useMaterial3: true,
        cardTheme: t8sThemes.v1Card,
        drawerTheme: t8sThemes.v1Drawer,
        appBarTheme: t8sThemes.v1Appbar,
    ),
    home: const AuthorizationPage()
  );
  
}

