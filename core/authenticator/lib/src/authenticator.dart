import 'package:core_model/auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authenticator.g.dart';

/// Authenticator instance
@Riverpod(keepAlive: true)
Authenticator authenticator(Ref ref) {
  throw UnimplementedError('authenticator');
}

abstract interface class Authenticator {
  AuthState get authState;

  String? get currentUserId;

  Future<String?> get idToken;

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
