import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ok_barter/fetures/auth/pages/auth_screen.dart';
import 'package:ok_barter/fetures/home/bloc/home_bloc.dart';
import 'package:ok_barter/fetures/home/pages/home_screen.dart';
import 'package:ok_barter/fetures/instrest/bloc/instrest_bloc.dart';
import 'package:ok_barter/fetures/instrest/pages/instrest_screen.dart';

enum Routes { splashScreen, instrestScreen, homeScreen }

GoRouter goRouter = GoRouter(
  initialLocation: "/instrestScreen",
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splashScreen.name,
      builder: (context, state) => AuthScreen(),
    ),
    GoRoute(
      path: "/instrestScreen",
      name: Routes.instrestScreen.name,
      builder: (context, state) => BlocProvider(
        create: (context) => InstrestBloc(),
        child: InstrestScreen(),
      ),
    ),
    GoRoute(
      path: "/homeScreen",
      name: Routes.homeScreen.name,
      builder: (context, state) =>
          BlocProvider(create: (context) => HomeBloc(), child: HomeScreen()),
    ),
  ],
);
