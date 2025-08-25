import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_note_reader/presentation/feature/home/home_screen.dart';
import 'package:medi_note_reader/presentation/feature/login/login_screen.dart';
import 'package:medi_note_reader/presentation/routing/routes.dart';

import '../../common/di/get_it.dart';
import '../feature/onboarding/onboarding_screen.dart';
import '../feature/scan/cubit/scan_cubit.dart';
import '../feature/scan/scan_result_screen.dart';
import '../feature/scan/scan_screen.dart';

final GlobalKey<NavigatorState> goRouteRootNavigatorKey =
    GlobalKey<NavigatorState>();

String firstRoute = Routes.onboarding;

final appRouter = GoRouter(
  navigatorKey: goRouteRootNavigatorKey,
  initialLocation: firstRoute,
  routes: [
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => OnboardingScreen(localDataRepo: getIt()),
    ),
    GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
    GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
    GoRoute(
      path: Routes.scan,
      builder:
          (context, state) => BlocProvider<ScanCubit>(
            create: (context) => ScanCubit(),
            child: ScanScreen(),
          ),
    ),
    GoRoute(
      path: Routes.scanResult,
      builder: (context, state) {
        final imagePath = state.extra as String;
        return ScanResultScreen(imagePath: imagePath);
      },
    ),
  ],
);
