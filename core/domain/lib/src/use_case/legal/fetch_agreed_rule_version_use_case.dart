import 'package:core_data/legal.dart';
import 'package:core_model/rule.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_agreed_rule_version_use_case.g.dart';

/// 同意日時を取得する
@riverpod
RuleVersion? fetchAgreedRuleVersionUseCase(Ref ref) =>
    ref.watch(legalRepositoryProvider).agreedVersion;
