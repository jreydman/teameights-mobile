import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teameights_mobile/shared/pages/home/home.page.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(child: Column(children: <Widget>[
    const Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: 
      TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Email', hintText: 'Enter valid email id as abc@gmail.com')),
    ),
    const Padding(padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0), child: 
      TextField(obscureText: true, decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password', hintText: 'Enter secure password')),
    ),
    TextButton(onPressed: (){/*TODO FORGOT PASSWORD SCREEN GOES HERE*/}, child: 
      const Text('Forgot Password', style: TextStyle(color: Colors.blue, fontSize: 15)),
    ),
    Container(height: 50, width: 250, decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)), child: 
      TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute<Widget>(builder: (_) => const HomePage()));}, child: 
        const Text('Login', style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
    ),
    const SizedBox(height: 130),
    const Text('New User? Create Account')
  ]));
}