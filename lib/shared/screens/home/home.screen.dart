import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:teameights_mobile/shared/components/navbar/navbar.component.dart';
import 'package:teameights_mobile/shared/router/router.dart';


@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    title: 'HOME PAGE',
    routerConfig: _appRouter.config(
      navigatorObservers: () => [
        TalkerRouteObserver(GetIt.I<Talker>()),
      ],
    ),
  );
}