import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SettingsScreen',
  type: SettingsScreen,
  path: '[Feature]/my',
)
SettingsScreen settingsScreenUseCase(BuildContext context) {
  return SettingsScreen(
    onTapThemeSetting: () {},
    onTapOpenSourceLicense: () {},
    onSignOutSuccess: () {},
  );
}
