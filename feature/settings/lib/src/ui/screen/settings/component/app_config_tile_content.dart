import 'package:core_model/config.dart';
import 'package:feature_settings/src/gen/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリ設定タイルのコンテンツ
final class AppConfigTileContent extends ConsumerWidget {
  const AppConfigTileContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final appConfig = ref.watch(appConfigProvider);

    return Column(
      children: [
        // アプリバージョン
        Text(l10n.settingsAppConfigAppVersion),
        if (kIsWeb)
          Text(appConfig.version.value)
        else
          Text('${appConfig.version.value} (${appConfig.buildNumber})'),

        // パッケージ名
        if (kDebugMode)
          Text(appConfig.packageName)
        else
          const SizedBox.shrink(),

        // インストールストア
        if (appConfig.installerStore != null)
          Text('It was installed with ${appConfig.installerStore}.')
        else
          const SizedBox.shrink(),
      ],
    );
  }
}
