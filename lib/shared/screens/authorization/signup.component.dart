import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:teameights_mobile/shared/screens/authorization/authFormfield.component.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      alignment: Alignment.center,
      child: SafeArea(child: Listener(
          onPointerDown: (PointerDownEvent event) => FocusManager.instance.primaryFocus?.unfocus(),
          child: Form(child: SingleChildScrollView(child: Column(children: [
            Text('Signup'),
            const SizedBox(height: 12.0),
            Row(mainAxisAlignment : MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton.icon(onPressed: (){}, icon: Icon(PhosphorIcons.bold.googleChromeLogo), label: const Text('Google')),
              ElevatedButton.icon(onPressed: (){}, icon: Icon(PhosphorIcons.bold.githubLogo), label: const Text('Github')),
            ]),
            const SizedBox(height: 12.0),
            T8sTextFormFiled(labelText: 'Username', icon: Icon(PhosphorIcons.bold.user), keyboardType: TextInputType.name),
            const SizedBox(height: 12.0),
            T8sTextFormFiled(labelText: 'Email', icon: Icon(PhosphorIcons.bold.at), keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 12.0),
            T8sTextFormFiled(labelText: 'Password', icon: Icon(PhosphorIcons.bold.password), keyboardType: TextInputType.text),
            const SizedBox(height: 12.0),
            T8sTextFormFiled(labelText: 'repeat password', icon: Icon(PhosphorIcons.bold.password), keyboardType: TextInputType.text),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing authorize user')),
                );
              },
              child: const Text('Submit'),
            )
          ])))
      )));

}