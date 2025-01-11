import 'package:core_data/repository.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_theme_use_case.g.dart';

/// テーマを取得する ユースケース
@riverpod
Theme fetchThemeUseCase(Ref ref) =>
    ref.watch(userSettingsRepositoryProvider).theme;
