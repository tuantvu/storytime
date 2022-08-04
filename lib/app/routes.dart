import 'package:go_router/go_router.dart';
import 'package:storytime/features/home/home_screen.dart';
import 'package:storytime/features/startup/splash/splash_screen.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';
}

final routes = <GoRoute>[
  GoRoute(
    path: Routes.splash,
    builder: SplashScreen.route,
  ),
  GoRoute(
    path: Routes.home,
    builder: HomeScreen.route,
  ),
];
