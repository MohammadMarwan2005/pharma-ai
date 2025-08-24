import 'package:flutter/material.dart';
import 'package:medi_note_reader/presentation/lang/app_localization.dart';

import '../../widgets/screen_padding.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenPadding(child: Center(child: Text("Home".tr(context)))),
      ),
    );
  }
}
