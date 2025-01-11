import 'package:core_data/repository.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_stream_use_case.g.dart';

/// テーマのストリームを取得する ユースケース
@riverpod
Stream<Theme> themeStreamUseCase(Ref ref) =>
    ref.watch(userSettingsRepositoryProvider).themeStream;
