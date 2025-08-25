import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_note_reader/domain/model/domain_error.dart';
import 'package:medi_note_reader/presentation/helper/navigation_helper.dart';
import 'package:medi_note_reader/presentation/routing/routes.dart';

import '../../theme/ui/switch_theme_widget.dart';
import 'cubit/scan_cubit.dart';
import 'cubit/scan_state.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ScanCubit>();
    final screenHeight = MediaQuery.of(context).size.height;
    final bottomPadding = screenHeight * 0.15;
    return Scaffold(
      appBar: AppBar(actions: [SwitchThemeWidget()]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: BlocBuilder<ScanCubit, ScanState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading:
                  () => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
              orElse: () {
                return FloatingActionButton.large(
                  onPressed: () {
                    cubit.startScanner();
                  },
                  shape: const CircleBorder(),
                  elevation: 8.0,
                  child: Icon(
                    Icons.camera_alt,
                    size: 32,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                );
              },
            );
          },
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<ScanCubit, ScanState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              success: (imagePath) {
                context.pushRoute(Routes.scanResult, extra: imagePath);
              },
              error: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error.getMessage(context))),
                );
              },
            );
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.document_scanner,
                    size: 80,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Point camera to document\nPress center button to scan",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
