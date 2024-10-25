import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get debugAppBarTitle => 'デバッグ機能';

  @override
  String get dataStoreSettingsTitle => 'データストアの設定値';

  @override
  String get dataStoreSettingsDescription => 'データストアの設定値を確認・変更します。';
}
