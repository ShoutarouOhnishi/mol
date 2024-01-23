import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/usecase/match_with_opponent_usecase_impl.dart';
import 'package:frontend/domain/repository/match_make_repository.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'match_with_opponent_usecase_impl_test.mocks.dart';

@GenerateMocks([
  MatchMakeRepository,
])
void main() {
  group('MatchWithOpponentUseCaseImpl', () {
    late MatchWithOpponentUseCaseImpl useCase;
    late MockMatchMakeRepository mockRepository;
    late FirebaseFirestore mockFirestore;

    setUp(() {
      mockRepository = MockMatchMakeRepository();
      mockFirestore = FakeFirebaseFirestore();
      useCase = MatchWithOpponentUseCaseImpl(mockRepository, mockFirestore);
    });

    test('マッチング処理で先入れ先出しが正常におこなわれている', () async {
      // Arrange
      var userQueue = ['user1', 'user2', 'user3', 'user4'];
      var roomQueue = ['room1', 'room1', 'room2', 'room2'];
      when(mockRepository.getOldestWaitingUserId())
          .thenAnswer((_) async => userQueue.removeAt(0));
      when(mockRepository.createMatchedRoom(any, any))
          .thenAnswer((_) async => roomQueue.removeAt(0));
      // Act
      final result1 = await useCase('user1');
      final result2 = await useCase('user2');
      final result3 = await useCase('user3');
      final result4 = await useCase('user4');

      // Assert
      expect(result1, const MatchMakeState.matched('room1'));
      expect(result2, const MatchMakeState.matched('room1'));
      expect(result3, const MatchMakeState.matched('room2'));
      expect(result4, const MatchMakeState.matched('room2'));
    });
  });
}
