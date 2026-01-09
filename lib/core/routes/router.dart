import 'package:go_router/go_router.dart';
import 'package:ok_barter/fetures/auth/pages/landing_screen.dart';
import 'package:ok_barter/fetures/auth/pages/signup_screen.dart';
import 'package:ok_barter/fetures/auth/pages/splash_screen.dart';

enum Routes { splashScreen, landingScreen, signUpScreen }

GoRouter goRouter = GoRouter(
  initialLocation: "/SignupScreen",
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splashScreen.name,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: "/landingScreen",
      name: Routes.landingScreen.name,
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      path: "/SignupScreen",
      name: Routes.signUpScreen.name,
      builder: (context, state) => SignupScreen(),
    ),
  ],
);
