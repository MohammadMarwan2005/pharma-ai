import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medi_note_reader/presentation/lang/app_localization.dart';
import 'package:medi_note_reader/presentation/widgets/app_button.dart';
import 'package:medi_note_reader/presentation/widgets/screen_padding.dart';

class OrderSummaryScreen extends StatelessWidget {
  final List<String> imagesPaths;

  const OrderSummaryScreen({super.key, required this.imagesPaths});

  @override
  Widget build(BuildContext context) {
    final files = imagesPaths.map((path) => File(path));
    return Scaffold(
      appBar: AppBar(title: Text("Order".tr(context))),
      body: ScreenPadding(
        horizontal: 32,
        vertical: 32,
        child: Center(
          child: Column(
            children: [
              ...files.map(
                (file) => Expanded(
                  child:
                      file.existsSync()
                          ? Image.file(file, fit: BoxFit.contain)
                          : Center(child: Text("Image not found".tr(context))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: AppButton(
                  onPressed: () {},
                  text: "Use this image".tr(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
