import 'package:auto_route/auto_route.dart';
import 'package:teameights_mobile/shared/screens/home/home.screen.dart';
import 'package:teameights_mobile/shared/screens/authorization/authorization.screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: AuthorizationRoute.page, path: '/auth'),
  ]; 
} 