import 'package:feature_home/feature_home.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'HomeScreen',
  type: HomeScreen,
  path: '[Feature]/home',
)
HomeScreen homeScreenUseCase(BuildContext context) {
  return HomeScreen(
    onTapNotification: () {},
    onQuickAddButtonPressed: () {},
    onTapQuestListItem: (_) {},
    onMoreButtonPressed: () {},
  );
}
