import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/core/util/input_converter.dart';

void main() {
  late InputConverter inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  group('stringToUnsignedInt', () {
    test('should return an int when the string represents an unsigned int', () async {
      // arrange
      const str = '123';
      // act
      final result = inputConverter.stringToUnsignedInt(str);
      // assert
      expect(result, const Right(123));
    });
  });

}