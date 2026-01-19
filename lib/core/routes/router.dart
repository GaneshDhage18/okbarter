import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ok_barter/fetures/add_Product/bloc/add_Product_bloc.dart';
import 'package:ok_barter/fetures/add_Product/pages/add_Product_screen.dart';
import 'package:ok_barter/fetures/add_Product/pages/addproduct_success_screen.dart';
import 'package:ok_barter/fetures/auth/pages/auth_screen.dart';

enum Routes { splashScreen, addProduct, productAddedSuccesfuly }

GoRouter goRouter = GoRouter(
  initialLocation: "/addproduct",
  routes: [
    GoRoute(
      path: "/",
      name: Routes.splashScreen.name,
      builder: (context, state) => AuthScreen(),
    ),
    GoRoute(
      path: "/addproduct",
      name: Routes.addProduct.name,
      builder: (context, state) => BlocProvider(
        create: (context) => AddProductBloc(),
        child: AddProductScreen(),
      ),
    ),
    GoRoute(
      path: "/productaddedsuccess",
      name: Routes.productAddedSuccesfuly.name,
      builder: (context, state) => AddproductSuccessScreen(),
    ),
  ],
);
