import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_analytics.g.dart';

@Riverpod(keepAlive: true)
QuestAnalytics questAnalytics(Ref ref) {
  throw UnimplementedError('questAnalytics');
}

/// クエスト機能の Analytics Logger
abstract interface class QuestAnalytics {
  /// クエスト一覧画面表示イベントを記録する
  Future<void> trackShowQuestListPageEvent();
}
