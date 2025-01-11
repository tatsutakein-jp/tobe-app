import 'package:core_authenticator/authenticator.dart';
import 'package:core_data/repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sync_use_case.g.dart';

/// 同期するユースケース
@riverpod
Future<void> syncUseCase(Ref ref) async {
  final authenticator = ref.watch(authenticatorProvider);
  final currentUserId = authenticator.currentUserId;
  if (currentUserId == null) {
    return;
  }

  await Future.wait([
    ref.watch(questRepositoryProvider).sync(userId: currentUserId),
  ]);
}
