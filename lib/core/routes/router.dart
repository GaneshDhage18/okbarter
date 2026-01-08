import 'package:go_router/go_router.dart';
import 'package:ok_barter/fetures/auth/pages/auth_screen.dart';

enum Routes { splashScreen }

GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splashScreen.name,
      builder: (context, state) => AuthScreen(),
    ),
  ],
);
