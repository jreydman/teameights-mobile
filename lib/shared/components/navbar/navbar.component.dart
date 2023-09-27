import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/data/user.dart';
import 'package:teameights_mobile/shared/data/variables.dart';
import 'package:teameights_mobile/shared/components/navbar/navbarProfileCard.component.dart';
import 'package:teameights_mobile/shared/components/navbar/navigationCard.component.dart';
import 'package:teameights_mobile/shared/components/logotype.component.dart';

class T8sNavbar extends StatefulWidget {
  const T8sNavbar({super.key});
  @override
  State<StatefulWidget> createState() => _T8sNavbarState();
}

class _T8sNavbarState extends State<T8sNavbar> {
  
  User user = User(username: 'jreydman', email: 'pikj.reyderman@gmail.com');
  
  User? _userData;
  
  void setUser() {
    setState(() {
      _userData = user;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerHeader(child: Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const T8sLogotype(),
              IconButton(
                  onPressed: (){Navigator.pop(context);},
                  icon: const Icon(CupertinoIcons.arrow_right_arrow_left, color: t8sAppVariables.accentColor,)
              ),
            ]),
            const SizedBox(height: 24.0),
              if (_userData != null) const T8sNavbarProfileCard()
              else const T8sNavigationCard(title: Text('Authorize'), leading: Icon(CupertinoIcons.option)),
          ])),
          if (_userData != null) const Column(children: [
            T8sNavigationCard(title: Text('Teammates'), leading: Icon(CupertinoIcons.search_circle)),
            T8sNavigationCard(title: Text('Team'), leading: Icon(CupertinoIcons.person_2)),
            T8sNavigationCard(title: Text('Messages'), leading: Icon(CupertinoIcons.captions_bubble)),
            T8sNavigationCard(title: Text('Tournaments'), leading: Icon(CupertinoIcons.game_controller)),
            T8sNavigationCard(title: Text('Profile'), leading: Icon(CupertinoIcons.profile_circled)),
          ]),
          if (_userData != null) const Column(children: [
            T8sNavigationCard(title: Text('Notifications'), leading: Icon(CupertinoIcons.bell)),
            T8sNavigationCard(title: Text('Log out'), leading: Icon(CupertinoIcons.arrow_left_square)),
          ]),
          const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text('Copyright© 2023 Teameights', style: t8sThemes.v1UnstateText)
          ),
        ],
      ),
    );
  }
}
