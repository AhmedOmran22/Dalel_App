import 'package:dalel/core/routes/routes_name.dart';
import 'package:dalel/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutesName.splashView,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: RoutesName.onBoarding,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingView();
      },
    ),
    GoRoute(
      path: RoutesName.signUp,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignUpView(),
        );
      },
    ),
    GoRoute(
      path: RoutesName.signIn,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignInView(),
        );
      },
    ),
    GoRoute(
      path: RoutesName.homeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
  ],
);
