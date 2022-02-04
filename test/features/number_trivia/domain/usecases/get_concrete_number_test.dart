import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

Future<void> main() async {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(text: 'test', number: 1);

  test('should get trivia for the number from the repository', () async {
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => const Right(tNumberTrivia));
  });
  final result = await usecase.execute(number: tNumber);

  expect(result, const Right(tNumberTrivia));

  verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));

  verifyNoMoreInteractions(mockNumberTriviaRepository);
}
