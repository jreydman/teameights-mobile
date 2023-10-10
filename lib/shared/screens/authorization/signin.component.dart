import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:teameights_mobile/shared/screens/authorization/authFormfield.component.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) => Container(
    
    alignment: Alignment.center,
    child: SafeArea(child: Listener(
      onPointerDown: (PointerDownEvent event) => FocusManager.instance.primaryFocus?.unfocus(),
  child: Form(child: SingleChildScrollView(child: Column(children: [
      const Text('Signin'),
      const SizedBox(height: 12.0),
      T8sTextFormFiled(labelText: 'Username', icon: Icon(PhosphorIcons.bold.user), keyboardType: TextInputType.name),
      const SizedBox(height: 12.0),
      T8sTextFormFiled(labelText: 'Password', icon: Icon(PhosphorIcons.bold.password), keyboardType: TextInputType.text)
    ])))
  ))); 
}