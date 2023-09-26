import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff1A1C22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DrawerHeader(child: Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              RichText(text: TextSpan(text: 'T', style: GoogleFonts.rubik(color: const Color(0xffffffff), fontSize: 32.0, fontWeight: FontWeight.w600), children: const <TextSpan>[
                TextSpan(text: '8', style: TextStyle(color: Color(0xff5bd424))),
                TextSpan(text: 'S'),
              ])),
              const Icon(CupertinoIcons.arrow_right_arrow_left, color: Color(0xff5bd424),)
              ]),
              const SizedBox(height: 24.0),
            DefaultTextStyle(style: GoogleFonts.rubik(color: const Color(0xffffffff), fontSize: 16.0, fontWeight: FontWeight.w400),child: Row(children: [
                const CircleAvatar(child: Icon(size: 32.0, CupertinoIcons.profile_circled)),
                const SizedBox(width: 12.0),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('JReydman'),
                  Text('pikj.reyderman@gmail.com', style: GoogleFonts.rubik(color: const Color(0xff8f9094), fontSize: 12.0))
                ]),
              ])),
            ],),
          ),
          Column(children: [
            Card(margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Teammates'), leading: Icon(CupertinoIcons.search_circle))),
            Card(color: const Color(0xff5bd424), margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Team'), leading: Icon(CupertinoIcons.person_2))),
            Card(margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Messages'), leading: Icon(CupertinoIcons.captions_bubble))),
            Card(margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Tournaments'), leading: Icon(CupertinoIcons.game_controller))),
            Card(margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Profile'), leading: Icon(CupertinoIcons.profile_circled))),
          ]),
          Column(children: [
            Card(margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Notifications'), leading: Icon(CupertinoIcons.bell))),
            Card(margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,child: const ListTile(title: Text('Log out'), leading: Icon(CupertinoIcons.arrow_left_square))),
          ]),
          Text('Copyright© 2023 Teameights', style: GoogleFonts.rubik(fontSize: 12.0, fontWeight: FontWeight.w400, color: const Color(0xff8f9094)))
        ],
      ),
    );
  }
}
