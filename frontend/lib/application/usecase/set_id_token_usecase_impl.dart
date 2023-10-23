import 'package:frontend/domain/usecase/set_id_token_usecase.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class SetIdTokenUseCaseImpl implements SetIdTokenUseCase {
  final ApiClient apiClient;

  SetIdTokenUseCaseImpl(this.apiClient);

  @override
  void call(String idToken) {
    try {
      apiClient.addDefaultHeader('Authorization', 'Bearer $idToken');
    } on Exception catch (e) {
      // エラー処理 (例: 上層にエラーを伝える、ログに記録する、等)
    }
  }
}
