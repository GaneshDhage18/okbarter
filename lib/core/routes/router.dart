import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ok_barter/fetures/location/pages/confirm_location_screen.dart';
import 'package:ok_barter/fetures/location/pages/location_screen.dart';
import 'package:ok_barter/fetures/messages/bloc/messages_bloc.dart';
import 'package:ok_barter/fetures/messages/pages/messages_screen.dart';

enum Routes {
  splashScreen,
  locationScreen,
  confirmLocationScreen,
  messagesScreen,
}

GoRouter goRouter = GoRouter(
  initialLocation: '/messagesScreen',
  routes: [
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
    GoRoute(
      path: "/messagesScreen",
      name: Routes.messagesScreen.name,
      builder: (context, state) => BlocProvider(
        create: (context) => MessagesBloc(),
        child: MessagesScreen(),
      ),
    ),
  ],
);
