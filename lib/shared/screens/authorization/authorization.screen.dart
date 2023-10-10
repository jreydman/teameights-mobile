import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:teameights_mobile/shared/components/navbar/navbar.component.dart';
import 'package:teameights_mobile/shared/screens/authorization/signin.component.dart';
import 'package:teameights_mobile/shared/screens/authorization/signup.component.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});
  @override
  State<StatefulWidget> createState() => AuthorizationScreenState();
}

class AuthorizationScreenState extends State<AuthorizationScreen> {
  
  int _pageViewIndex=0;
  final PageController _pgController = PageController(initialPage: 0, keepPage: true);
  List pageContent = <Widget>[const Signin(), const Signup()];

  void openPage(int index) {
    setState(()=>_pageViewIndex=index);
    _pgController.animateToPage(_pageViewIndex, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    GetIt.I<Talker>().debug('${toString()}: open ${pageContent[_pageViewIndex].toString()} page');
  }
  
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children:[
        InkResponse(onTap: () => openPage(0), child: const Text("Signin")),
        const Text('Authorization'),
        InkResponse(onTap: () => openPage(1), child: const Text("Signup"))
    ])),
    drawer: const T8sNavbar(),
    body: PageView.builder(
        onPageChanged: (index)=>setState(() => _pageViewIndex=index),
        controller: _pgController,
        itemCount: pageContent.length,
        itemBuilder: (context, pageViewIndex) {return pageContent[pageViewIndex];}
    )
  );
}

