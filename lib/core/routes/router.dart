import 'package:go_router/go_router.dart';
import 'package:ok_barter/fetures/auth/pages/auth_screen.dart';
import 'package:ok_barter/fetures/location/pages/confirm_location_screen.dart';
import 'package:ok_barter/fetures/location/pages/location_screen.dart';

enum Routes { splashScreen, locationScreen, confirmLocationScreen }

GoRouter goRouter = GoRouter(
  initialLocation: '/locationScreen',
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splashScreen.name,
      builder: (context, state) => AuthScreen(),
    ),
    GoRoute(
      path: "/locationScreen",
      name: Routes.locationScreen.name,
      builder: (context, state) => LocationScreen(),
    ),
    GoRoute(
      path: "/confirmLocationScreen",
      name: Routes.confirmLocationScreen.name,
      builder: (context, state) => ConfirmLocationScreen(),
    ),
  ],
);
