import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/components/navbar/navbar.component.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('T8S')),
    drawer: const T8sNavbar(),
    body: Container(alignment: Alignment.center, child: Text('home page'))
  );
}