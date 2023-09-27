import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/data/variables.dart';

class T8sNavbarProfileCard extends StatelessWidget {
  const T8sNavbarProfileCard({super.key});
  @override
  Widget build(BuildContext context) => const DefaultTextStyle(
      style: t8sThemes.v1RegularText,
      child: Row(children: [
        CircleAvatar(backgroundColor: t8sAppVariables.accentColor, child: Icon(color: t8sAppVariables.primaryColor, semanticLabel: 'avatar', size: 32.0, CupertinoIcons.profile_circled)),
        SizedBox(width: 12.0),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('JReydman'),
              Text('pikj.reyderman@gmail.com', style: t8sThemes.v1UnstateText)
            ]
        ),
  ]));
}