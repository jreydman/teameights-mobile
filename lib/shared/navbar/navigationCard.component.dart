import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/assets/variables.dart';

class T8sNavigationCard extends StatelessWidget {

  final Widget? title;
  final Widget? leading;
  final void Function()? tapEvent;
  const T8sNavigationCard({super.key, this.title, this.leading, this.tapEvent});
  
  @override
  Widget build(BuildContext context) => Card(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        splashColor: t8sAppVariables.accentHoverColor,
        onTap: () {/*TODO navigation event*/},
        child: ListTile(
            title: title,
            leading: leading,
            titleTextStyle: t8sThemes.v1RegularText,
            iconColor: t8sAppVariables.primaryColor
        ),
      )
  );

}