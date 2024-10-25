import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get debugAppBarTitle => 'Debug Feature';

  @override
  String get dataStoreSettingsTitle => 'Data Store Settings';

  @override
  String get dataStoreSettingsDescription =>
      'Check and change the settings of the data store.';
}
