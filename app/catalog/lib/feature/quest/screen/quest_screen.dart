import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestListScreen',
  type: QuestListScreen,
  path: '[Feature]/quest',
)
QuestListScreen questListScreenUseCase(BuildContext context) {
  return QuestListScreen(
    onTapQuestListItem: (_) {},
    onTapQuestAddButton: () {},
  );
}
