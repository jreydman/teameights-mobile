import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:teameights_mobile/shared/data/variables.dart';
import 'package:teameights_mobile/shared/screens/authorization/authorization.screen.dart';

Future<void> main() async {
  
  final talker = TalkerFlutter.init();
  GetIt.I.registerSingleton(talker);
  GetIt.I<Talker>().debug("Talker started...");
  
  final dio = Dio();
  dio.interceptors.add(TalkerDioLogger(
    settings: const TalkerDioLoggerSettings(printRequestData: false),
    talker: talker
  ));
  
  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: const TalkerBlocLoggerSettings(printStateFullData: false, printEventFullData: false),
  );
  
  FlutterError.onError = (details) => GetIt.I<Talker>().handle(details.exception, details.stack);
  
  runZonedGuarded(
        () => runApp(const TeameightsMobileApp()),
        (error, stack) => GetIt.I<Talker>().handle(error, stack),
  );
}

class TeameightsMobileApp extends StatelessWidget {
  const TeameightsMobileApp({super.key});
  
  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: ThemeData(
        fontFamily: 'Rubik',
        //useMaterial3: true,
        cardTheme: t8sThemes.v1Card,
        drawerTheme: t8sThemes.v1Drawer,
        appBarTheme: t8sThemes.v1Appbar,
    ),
    home: const AuthorizationScreen()
  );
  
}

