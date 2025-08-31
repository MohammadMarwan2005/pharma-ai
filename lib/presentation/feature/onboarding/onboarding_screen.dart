import 'package:flutter/material.dart';
import 'package:medi_note_reader/presentation/helper/navigation_helper.dart';
import 'package:medi_note_reader/presentation/lang/app_localization.dart';
import 'package:medi_note_reader/presentation/lang/ui/switch_lang_label.dart';
import 'package:medi_note_reader/presentation/routing/routes.dart';
import 'package:medi_note_reader/presentation/widgets/app_button.dart';
import 'package:medi_note_reader/presentation/widgets/screen_padding.dart';

import '../../../domain/repo/local_data_repo.dart';
import '../../theme/ui/switch_theme_widget.dart';

class OnboardingScreen extends StatelessWidget {
  final LocalDataRepo localDataRepo;

  const OnboardingScreen({super.key, required this.localDataRepo});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final imageHeight = height * 0.5;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ScreenPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: SwitchThemeWidget(),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Hello, Pharma AI!".tr(context),
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: imageHeight),
                    // AppButton(
                    //   onPressed: () {
                    //     localDataRepo.setOnboarded();
                    //     context.goRoute(Routes.login);
                    //   },
                    //   text: "Login".tr(context),
                    // ),
                    SizedBox(height: 16),
                    AppButton(
                      isSecondary: false,
                      onPressed: () {
                        localDataRepo.setOnboarded();
                        context.goRoute(Routes.scan);
                      },
                      text: "Scan".tr(context),
                    ),
                    SizedBox(height: 16),
                    Center(child: SwitchLangLabel()),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              // Text("Welcome to AqarGo".tr(context)),
              // SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
