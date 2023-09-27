import 'package:flutter/material.dart';

mixin t8sThemes {
  static final CardTheme v1Card = CardTheme(
    color: t8sAppVariables.backgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
    margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
  );
  
  static const DrawerThemeData v1Drawer = DrawerThemeData(
    backgroundColor: t8sAppVariables.backgroundAccentColor,
  );
  
  static const AppBarTheme v1Appbar = AppBarTheme(
      backgroundColor: t8sAppVariables.backgroundColor,
      foregroundColor: t8sAppVariables.accentColor
  );
  
  static const TextStyle v1RegularText = TextStyle(
    color: t8sAppVariables.primaryColor,
    fontSize: t8sAppVariables.fontSizeMedium,
    fontWeight: t8sAppVariables.fontWeightRegular
  );

  static const TextStyle v1AccentText = TextStyle(
      color: t8sAppVariables.primaryColor,
      fontSize: t8sAppVariables.fontSizeHigh,
      fontWeight: t8sAppVariables.fontWeightBold
  );

  static const TextStyle v1UnstateText = TextStyle(
      color: t8sAppVariables.secondaryColor,
      fontSize: t8sAppVariables.fontSizeLow,
      fontWeight: t8sAppVariables.fontWeightRegular
  );
  
}
mixin t8sAppVariables {
  static const Color backgroundColor = Color(0xFF26292B); //black
  static const Color backgroundAccentColor = Color(0xFF1A1C22); //black
  
  static const Color primaryColor = Color(0xFFFFFFFF); //white
  static const Color primaryUnstateColor = Color(0xFF8F9094); //grey
  static const Color primaryDisabledColor = Color(0xFF434752); //grey dark
  
  static const Color secondaryColor = Color(0xFF8F9094); //grey
  
  static const Color accentColor = Color(0xFF5BD424); //green bright
  static const Color accentHoverColor = Color(0xFF46A11B); //green hover
  static const Color accentDisabledColor = Color(0xFF1C8111); //green dark
  static const Color accentUnstateColor = Color(0xFF2450B2); //blue dark
  
  static const Color errorColor = Color(0xFFD42422); //red
  static const Color errorDisabledColor = Color(0xFF450707); //red medium

  static const fontWeightBold = FontWeight.w600;
  static const fontWeightRegular = FontWeight.w400;

  static const fontSizeHigh = 32.0;
  static const fontSizeMedium = 16.0;
  static const fontSizeLow = 12.0;

}