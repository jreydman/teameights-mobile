import 'package:flutter/material.dart';

class T8sTextFormFiled extends StatelessWidget {

  final String? labelText;
  final Widget? icon;
  final TextInputType? keyboardType;
  const T8sTextFormFiled({super.key, this.labelText, this.icon, this.keyboardType});
  @override
  Widget build(BuildContext context) => TextFormField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
      labelText: labelText,
      prefixIcon: icon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
    ),
  );
  
}