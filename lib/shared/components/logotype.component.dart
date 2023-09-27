import 'package:flutter/cupertino.dart';
import 'package:teameights_mobile/shared/data/variables.dart';

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