import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/usecase/set_id_token_usecase_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  group('SetIdTokenUseCaseImpl', () {
    late MockApiClient mockApiClient;
    late SetIdTokenUseCaseImpl setIdTokenUseCaseImpl;

    setUp(() {
      mockApiClient = MockApiClient();
      setIdTokenUseCaseImpl = SetIdTokenUseCaseImpl(mockApiClient);
    });

    test('should set Authorization header', () {
      const idToken = 'test_id_token';

      setIdTokenUseCaseImpl(idToken);

      verify(mockApiClient.addDefaultHeader('Authorization', 'Bearer $idToken'))
          .called(1);
    });
  });
}
