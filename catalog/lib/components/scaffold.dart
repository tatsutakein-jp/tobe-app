import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'AsisScaffold',
  type: AsisScaffold,
  path: '[Components]',
)
Widget asisScaffoldUseCase(BuildContext context) {
  return AsisScaffold(
    appBar: AppBar(
      title: const Text('AsisScaffold'),
    ),
    body: Center(
      child: Text('AsisScaffold'),
    ),
  );
}