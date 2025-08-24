import 'package:medi_note_reader/presentation/helper/ui_helper.dart';
import 'package:medi_note_reader/presentation/lang/app_localization.dart';
import 'package:medi_note_reader/presentation/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/di/get_it.dart';
import '../../domain/repo/local_data_repo.dart';
import '../routing/guest_mode/post_login_instruction.dart';

final LocalDataRepo userDataRepo = getIt();

extension NavigationHelper on BuildContext {
  void showYouNeedToLoginAlertDialog(String route, {Object? extra}) {
    showMyAlertDialog(
      "Log in First".tr(this),
      ["Please log in to continue and access all features.".tr(this)],
      true,
      gotItPlaceholder: "Login".tr(this),
      onGotItClicked: () {
        push(
          Routes.login,
          extra: PostLoginInstruction(
            redirectionRoute: route,
            itsExtras: extra,
          ),
        );
      },
      firstAction: TextButton(
        onPressed: () {
          pop();
        },
        child: Text("Cancel".tr(this)),
      ),
    );
  }

  void pushRoute(String route, {Object? extra}) {
    // if (userDataRepo.isGuest() && !Routes.isAllowed(route)) {
    //   showYouNeedToLoginAlertDialog(route, extra: extra);
    //   return;
    // }
    push(route, extra: extra);
  }

  void goRoute(String route, {Object? extra}) {
    // if (userDataRepo.isGuest() && !Routes.isAllowed(route)) {
    //   if (userDataRepo.isGuest() && !Routes.isAllowed(route)) {
    //     showYouNeedToLoginAlertDialog(route, extra: extra);
    //     return;
    //   }
    //   return;
    // }
    go(route, extra: extra);
  }

  void popNavigator() {
    Navigator.pop(this);
  }

  void popRoute() {
    GoRouter.of(this).pop();
  }

  void popThenPushRoute(String route, {Object? extra}) {
    if (GoRouter.of(this).canPop()) GoRouter.of(this).pop();
    pushRoute(route, extra: extra);
  }

  int getSelectedBottomNavBarIndex(List<String> routes) {
    final location = GoRouterState.of(this).uri.toString();
    var index = routes.indexWhere((tab) => location.startsWith(tab));
    if (index == -1) index = 0;
    return index;
  }
}

extension GoRouterStateX on GoRouterState {
  int extractIdParam(String key) =>
      int.tryParse(pathParameters[key] ?? '') ?? -1;
}
