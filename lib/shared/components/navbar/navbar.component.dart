import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
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
  
  static List<Message> messagePool_test = [
    Message(from: 'someMail@gmail.com', data: 'hello there!')
  ];

  static List<TNotification> notificationPool_test = [
    TNotification(title: 'open up it now!', data: 'yeah, bite haha')
  ];
  
  User _userData = User(username: 'username', email: 'email', messagePool: messagePool_test, notificationPool: notificationPool_test );
  
  void setUser() {
    setState(() {
     
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
                  icon: Icon(PhosphorIcons.bold.textOutdent, color: t8sAppVariables.accentColor)
              ),
            ]),
            const SizedBox(height: 24.0),
              if (_userData != null) const T8sNavbarProfileCard()
              else const T8sNavigationCard(title: Text('Authorize'), leading: Icon(CupertinoIcons.option)),
          ])),
          if (_userData != null) Column(children: [
            T8sNavigationCard(title: const Text('Teammates'), leading: Icon(PhosphorIcons.regular.magnifyingGlass)),
            T8sNavigationCard(title: const Text('Team'), leading: Icon(PhosphorIcons.regular.users)),
            T8sNavigationCard(title: const Text('Messages'), leading: Icon(PhosphorIcons.regular.chatTeardropDots), trailing: '30'),
            T8sNavigationCard(title: const Text('Tournaments'), leading: Icon(PhosphorIcons.regular.trophy)),
            T8sNavigationCard(title: const Text('Projects'), leading: Icon(PhosphorIcons.regular.file)),
            T8sNavigationCard(title: const Text('Profile'), leading: Icon(PhosphorIcons.regular.user)),
          ]),
          if (_userData != null) Column(children: [
            T8sNavigationCard(title: const Text('Notifications'), leading: Icon(PhosphorIcons.regular.bell), trailing: '5',),
            T8sNavigationCard(title: const Text('Settings'), leading: Icon(PhosphorIcons.regular.gear)),
          ]),
          Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textDirection: TextDirection.ltr ,children: [
                  IconButton(color: t8sAppVariables.primaryColor, icon: Icon(PhosphorIcons.regular.question), onPressed: (){}),
                  IconButton(color: t8sAppVariables.primaryColor, icon: Icon(PhosphorIcons.regular.signOut), onPressed: (){}),
                  IconButton(color: t8sAppVariables.primaryColor, icon: Icon(PhosphorIcons.regular.globe), onPressed: (){}),
                ]),
                const SizedBox(height: 20.0),
                const Text('Copyright© 2023 Teameights', style: t8sThemes.v1UnstateText)
              ],)
          ),
        ],
      ),
    );
  }
}
