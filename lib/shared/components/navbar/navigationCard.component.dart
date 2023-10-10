import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/data/variables.dart';

class T8sNavigationCard extends StatelessWidget {

  final Widget? title;
  final Widget? leading;
  final String? trailing;
  final void Function()? tapEvent;
  const T8sNavigationCard({super.key, this.title, this.leading, this.tapEvent, this.trailing});
  
  @override
  Widget build(BuildContext context) => Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        splashColor: t8sAppVariables.accentHoverColor,
        onTap: () {/*TODO navigation event*/},
        child: ListTile(
            title: title,
            leading: leading,
            titleTextStyle: t8sThemes.v1RegularText,
            iconColor: t8sAppVariables.primaryColor,
            trailing: trailing!=null ? 
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: t8sAppVariables.accentColor),
                  child: Padding(padding: const EdgeInsets.all(5.0), child: Text(trailing!)),
                ) : null
        ),
      )
  );

}