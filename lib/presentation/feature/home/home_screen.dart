import 'package:flutter/material.dart';
import 'package:medi_note_reader/presentation/helper/navigation_helper.dart';
import 'package:medi_note_reader/presentation/lang/app_localization.dart';
import 'package:medi_note_reader/presentation/theme/ui/switch_theme_widget.dart';

import '../../routing/routes.dart';
import '../../widgets/screen_padding.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final bottomPadding = screenHeight * 0.15;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(actions: [SwitchThemeWidget()]),
        body: ScreenPadding(child: Center(child: Text("Home".tr(context)))),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding),
          child: FloatingActionButton.large(
            onPressed: () {
              context.pushRoute(Routes.scan);
            },
            shape: const CircleBorder(),
            elevation: 8.0,
            child: Icon(
              Icons.camera_alt,
              size: 32,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}