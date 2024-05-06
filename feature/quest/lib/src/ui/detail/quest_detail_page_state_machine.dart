import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/ui/detail/quest_detail_page_action.dart';
import 'package:feature_quest/src/ui/detail/quest_detail_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_detail_page_state_machine.g.dart';

@riverpod
class QuestDetailPageStateMachine extends _$QuestDetailPageStateMachine {
  @override
  QuestDetailPageState build({
    required QuestId questId,
  }) {
    // final questDetailStream = ref.watch(questDetailStreamUseCaseProvider);

    return QuestDetailPageState(
      quest: AsyncValue.data(
        Quest(
          id: questId,
          name: 'Quest $questId',
          description: 'Description $questId',
          body: 'Body $questId',
        ),
      ),
    );
  }

  void dispatch(QuestDetailPageAction action) {
    switch (action) {
      case AddQuestButtonTapped(:final quest):
        Future(
          () async {
            final addQuest = ref.read(addQuestUseCaseProvider);
            await addQuest.execute((quest: quest));
          },
        );
    }
  }
}