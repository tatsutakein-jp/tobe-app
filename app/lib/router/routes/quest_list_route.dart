part of 'package:app/router/app_router.dart';

/// TypedGoRoute for feature_quest
///
/// クエストタブ内でのpush先はここのroutesにネストしていく
const questListRoute = TypedGoRoute<QuestListRoute>(
  path: AppPagePath.quest,
  routes: [
    TypedGoRoute<QuestAddRoute>(
      path: AppPagePath.questAdd,
    ),
    TypedGoRoute<QuestDetailRoute>(
      path: AppPagePath.questDetail,
    ),
  ],
);

@TypedGoRoute<QuestListRoute>(path: AppPagePath.quest)
final class QuestListRoute extends GoRouteData {
  const QuestListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => QuestListPage(
        onTapQuestListItem: (quest) {
          QuestDetailRoute(questId: quest.id).go(context);
        },
        onTapQuestAddButton: () => const QuestAddRoute().go(context),
      );
}

/// クエスト詳細画面
final class QuestDetailRoute extends GoRouteData {
  const QuestDetailRoute({
    required this.questId,
  });

  final QuestId questId;

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuestDetailPage(
      questId: questId,
    );
  }
}

/// クエスト追加画面
final class QuestAddRoute extends GoRouteData {
  const QuestAddRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  BottomSheetPage<void> buildPage(BuildContext context, GoRouterState state) =>
      BottomSheetPage<void>(
        builder: (context) => QuestAddPage(
          onAddQuestCompleted: () => context.pop(),
        ),
      );
}

final class BottomSheetPage<T> extends Page<T> {
  const BottomSheetPage({
    required this.builder,
    this.anchorPoint,
    this.barrierLabel,
    this.themes,
  });

  final WidgetBuilder builder;
  final Offset? anchorPoint;
  final String? barrierLabel;
  final CapturedThemes? themes;

  @override
  Route<T> createRoute(BuildContext context) {
    return ModalBottomSheetRoute(
      settings: this,
      builder: builder,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
    );
  }
}
