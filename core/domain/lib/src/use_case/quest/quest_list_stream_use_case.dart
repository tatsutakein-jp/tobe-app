import 'package:core_data/repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_list_stream_use_case.g.dart';

/// クエスト一覧を取得する ユースケース
@riverpod
Stream<List<Quest>> questListStreamUseCase(Ref ref) =>
    ref.watch(questRepositoryProvider).stream();
