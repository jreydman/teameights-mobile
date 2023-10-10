// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'base.env')
abstract class Env {
  @EnviedField(varName: 'APP_NAME', obfuscate: false)
  static const String appName = _Env.appName;
}