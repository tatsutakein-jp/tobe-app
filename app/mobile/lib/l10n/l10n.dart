import 'package:app_mobile/gen/l10n/l10n.dart';
import 'package:core_designsystem/l10n.dart';
import 'package:core_ui/l10n.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_debug/feature_debug.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_onboarding/feature_onboarding.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:feature_settings/feature_settings.dart';

const appLocalizationsDelegates = [
  ...L10n.localizationsDelegates,
  ...CoreDesignSystemL10n.localizationsDelegates,
  ...CoreUiL10n.localizationsDelegates,
  ...FeatureAuthL10n.localizationsDelegates,
  ...FeatureDebugL10n.localizationsDelegates,
  ...FeatureFeedL10n.localizationsDelegates,
  ...FeatureHomeL10n.localizationsDelegates,
  ...FeatureOnboardingL10n.localizationsDelegates,
  ...FeatureQuestL10n.localizationsDelegates,
  ...FeatureSettingsL10n.localizationsDelegates,
];

const appSupportedLocales = [
  ...L10n.supportedLocales,
  ...CoreDesignSystemL10n.supportedLocales,
  ...CoreUiL10n.supportedLocales,
  ...FeatureAuthL10n.supportedLocales,
  ...FeatureDebugL10n.supportedLocales,
  ...FeatureFeedL10n.supportedLocales,
  ...FeatureOnboardingL10n.supportedLocales,
  ...FeatureHomeL10n.supportedLocales,
  ...FeatureQuestL10n.supportedLocales,
  ...FeatureSettingsL10n.supportedLocales,
];
