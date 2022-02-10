import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/util/input_converter.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number.dart';
import 'package:number_trivia/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';

import '../../../../core/test_helpers.mocks.dart';

void main() {
  late NumberTriviaBloc bloc;
  late MockGetRandomNumberTrivia mockGetRandomNumberTrivia;
  late MockGetConcreteNumberTrivia mockGetConcreteNumberTrivia;
  late MockInputConverter mockInputConverter;

  setUp(() {
    mockGetConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    mockGetRandomNumberTrivia = MockGetRandomNumberTrivia();
    mockInputConverter = MockInputConverter();

    bloc = NumberTriviaBloc(
        getConcreteNumberTrivia: mockGetConcreteNumberTrivia,
        getRandomNumberTrivia: mockGetRandomNumberTrivia,
        inputConverter: mockInputConverter);
  });

  test('initialState should be Empty', () {
    // assert
    expect(bloc.state, equals(Empty()));
  });

  group('GetTriviaForConcreteNumber', () {
    // Event ngambil data string
    const tNumberString = '1';
    // Ini yg udah diparse
    final tNumberParsed = int.parse(tNumberString);
    // ini entity
    const tNumberTrivia = NumberTrivia(text: 'test trivia', number: 1);

    void setUpMockInputConverterSuccess() =>
        when(mockInputConverter.stringToUnsignedInt(any))
            .thenReturn(Right(tNumberParsed));

    test(
        'should call the InputConverter to validate and convert the string to an unsigned int',
        () async {
      //  arrange
      setUpMockInputConverterSuccess();
      // act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
      await untilCalled(mockInputConverter.stringToUnsignedInt(any));
      // assert
      verify(mockInputConverter.stringToUnsignedInt(tNumberString));
    });

// pake tes biasa
    test('should emit Error when the input invalid', () async {
      // arrange
      when(mockInputConverter.stringToUnsignedInt(any))
          .thenReturn(Left(InvalidInputFailure()));
      // assert later
      final expected = [Error(message: bloc.INVALID_INPUT_FAILURE_MESSAGE)];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
    });

// coba pake bloc test
    blocTest<NumberTriviaBloc, NumberTriviaState>(
      'should emit Error when the input invalid',
      build: () {
        when(mockInputConverter.stringToUnsignedInt(any))
            .thenReturn(Left(InvalidInputFailure()));
        return bloc;
      },
      act: (bloc) => bloc.add(const GetTriviaForConcreteNumber(tNumberString)),
      expect: () => [Error(message: bloc.INVALID_INPUT_FAILURE_MESSAGE)],
    );

    test('should get data from the concrete usecase', () async {
      // arrange
      setUpMockInputConverterSuccess();
      when(mockGetConcreteNumberTrivia(any))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // act
      bloc.add(GetTriviaForConcreteNumber(tNumberString));
      await untilCalled(mockGetConcreteNumberTrivia(any));
      // assert
      verify(mockGetConcreteNumberTrivia(Params(number: tNumberParsed)));
    });
  });
}
