import 'package:app_mobile/extension/theme.dart';
import 'package:app_mobile/l10n/l10n.dart';
import 'package:app_mobile/router/app_router.dart';
import 'package:app_mobile/ui/app_force_updatable.dart';
import 'package:app_mobile/ui/toast.dart';
import 'package:core_designsystem/theme.dart';
import 'package:core_domain/user_settings_use_case.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class TobeApp extends ConsumerWidget {
  const TobeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final themeStream = ref.watch(themeStreamUseCaseProvider);
    final themeMode = themeStream.maybeWhen(
      data: (theme) => theme.mode,
      orElse: () => ThemeMode.system,
    );

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp.router(
          title: 'TOBE',
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          theme: lightTheme(lightDynamic),
          darkTheme: darkTheme(darkDynamic),
          themeMode: themeMode,
          routerConfig: router,
          builder: (context, child) => Stack(
            children: [
              child!,
              const AppForceUpdatable(),
              Positioned(
                top: MediaQuery.of(context).padding.top + 10,
                left: 0,
                right: 0,
                bottom: 0,
                child: const ToastContainer(),
              ),
            ],
          ),
        );
      },
    );
  }
}
