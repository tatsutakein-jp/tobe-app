import 'package:core_data/repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recent_quest_list_stream_use_case.g.dart';

/// 直近のクエスト一覧を取得する ユースケース
@riverpod
Stream<List<Quest>> recentQuestListStreamUseCase(Ref ref) =>
    ref.watch(questRepositoryProvider).stream(limit: 5);
