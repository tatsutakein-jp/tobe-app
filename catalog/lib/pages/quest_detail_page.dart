import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestDetailPage',
  type: QuestDetailPage,
  path: '[Pages]',
)
QuestDetailPage questPageUseCase(BuildContext context) {
  return QuestDetailPage(questId: '1');
}
