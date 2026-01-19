import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ok_barter/features/chat/pages/chat_screen.dart';
import 'package:ok_barter/features/location/pages/confirm_location_screen.dart';
import 'package:ok_barter/features/location/pages/location_screen.dart';
import 'package:ok_barter/features/messages/bloc/messages_bloc.dart';
import 'package:ok_barter/features/messages/pages/messages_screen.dart';

enum Routes {
  splashScreen,
  locationScreen,
  confirmLocationScreen,
  messagesScreen,
  chatScreen,
}

GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: "/",
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
    GoRoute(
      path: "/chatScreen",
      name: Routes.chatScreen.name,
      builder: (context, state) => ChatScreen(),
    ),
  ],
);
