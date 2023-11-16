import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/repository/auth_repository.dart';
import 'package:frontend/domain/repository/match_make_repository.dart';
import 'package:frontend/domain/repository/user_repository.dart';
import 'package:frontend/infrastructure/repository/auth_repository_impl.dart';
import 'package:frontend/infrastructure/repository/match_make_repository_impl.dart';
import 'package:frontend/infrastructure/repository/user_repository_impl.dart';
import 'package:frontend/presentation/notifier/providers.dart';

final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(ref.watch(apiClientStateProvider)));

final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepositoryImpl(ref.watch(apiClientStateProvider)));

final matchMakeRepositoryProvider =
    Provider<MatchMakeRepository>((ref) => MatchMakeRepositoryImpl());
