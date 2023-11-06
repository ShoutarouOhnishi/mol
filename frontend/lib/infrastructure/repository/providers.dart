import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/repository/account_repository.dart';
import 'package:frontend/domain/repository/match_make_repository.dart';
import 'package:frontend/infrastructure/repository/account_repository_impl.dart';
import 'package:frontend/infrastructure/repository/match_make_repository_impl.dart';
import 'package:frontend/presentation/notifier/providers.dart';

final accountRepositoryProvider = Provider<AccountRepository>(
    (ref) => AccountRepositoryImpl(ref.watch(apiClientStateProvider)));

final matchMakeRepositoryProvider =
    Provider<MatchMakeRepository>((ref) => MatchMakeRepositoryImpl());
