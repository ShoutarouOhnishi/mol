import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/usecase/set_id_token_usecase.dart';
import 'package:frontend/presentation/notifier/api_client_state_notifier.dart';
import 'package:mockito/mockito.dart';

class MockSetIdTokenUseCase extends Mock implements SetIdTokenUseCase {}

void main() {
  group('ApiClientStateNotifier', () {
    late MockSetIdTokenUseCase mockSetIdTokenUseCase;
    late ApiClientStateNotifier apiClientStateNotifier;

    setUp(() {
      mockSetIdTokenUseCase = MockSetIdTokenUseCase();
      apiClientStateNotifier = ApiClientStateNotifier(mockSetIdTokenUseCase);
    });

    test('setIdToken should call SetIdTokenUseCase', () {
      const idToken = 'test_id_token';

      apiClientStateNotifier.setIdToken(idToken);

      verify(mockSetIdTokenUseCase(idToken)).called(1);
    });
  });
}
