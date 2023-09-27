import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teameights_mobile/shared/assets/variables.dart';

class T8sLogotype extends StatelessWidget {
  const T8sLogotype({super.key});
  @override
  Widget build(BuildContext context) => RichText(text: const TextSpan(
      text: 'T', 
      style: t8sThemes.v1AccentText, 
      children: <TextSpan>[
        TextSpan(text: '8', style: TextStyle(color: t8sAppVariables.accentColor)),
        TextSpan(text: 'S'),
      ]
  ));
}