import 'package:flutter/material.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomContainer(
                child: Text(AppText.settings, style: TextStyles.roboto400),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Settings Page",
          style: TextStyles.roboto24.copyWith(color: AppPalette.blackColor),
        ),
      ),
    );
  }
}
