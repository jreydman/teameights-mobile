import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teameights_mobile/shared/assets/variables.dart';

class T8sNavbarProfileCard extends StatelessWidget {
  const T8sNavbarProfileCard({super.key});
  @override
  Widget build(BuildContext context) => const DefaultTextStyle(
      style: t8sThemes.v1RegularText,
      child: Row(children: [
        CircleAvatar(child: Icon(size: 32.0, CupertinoIcons.profile_circled)),
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