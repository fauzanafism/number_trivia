// Mocks generated by Mockito 5.0.17 from annotations
// in number_trivia/test/core/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;
import 'dart:convert' as _i14;
import 'dart:typed_data' as _i15;

import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i5;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:number_trivia/core/error/failures.dart' as _i8;
import 'package:number_trivia/core/network/network_info.dart' as _i12;
import 'package:number_trivia/core/usecases/usecase.dart' as _i19;
import 'package:number_trivia/core/util/input_converter.dart' as _i16;
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart'
    as _i11;
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart'
    as _i10;
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart'
    as _i3;
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart'
    as _i9;
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repository.dart'
    as _i6;
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number.dart'
    as _i17;
import 'package:number_trivia/features/number_trivia/domain/usecases/get_random_number.dart'
    as _i18;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeNumberTriviaModel_1 extends _i1.Fake
    implements _i3.NumberTriviaModel {}

class _FakeDuration_2 extends _i1.Fake implements Duration {}

class _FakeAddressCheckResult_3 extends _i1.Fake
    implements _i4.AddressCheckResult {}

class _FakeResponse_4 extends _i1.Fake implements _i5.Response {}

class _FakeStreamedResponse_5 extends _i1.Fake implements _i5.StreamedResponse {
}

class _FakeNumberTriviaRepository_6 extends _i1.Fake
    implements _i6.NumberTriviaRepository {}

/// A class which mocks [NumberTriviaRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockNumberTriviaRepository extends _i1.Mock
    implements _i6.NumberTriviaRepository {
  MockNumberTriviaRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>> getConcreteNumberTrivia(
          int? number) =>
      (super.noSuchMethod(Invocation.method(#getConcreteNumberTrivia, [number]),
          returnValue: Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>.value(
              _FakeEither_0<_i8.Failure, _i9.NumberTrivia>())) as _i7
          .Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>
      getRandomNumberTrivia() =>
          (super.noSuchMethod(Invocation.method(#getRandomNumberTrivia, []),
                  returnValue:
                      Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>.value(
                          _FakeEither_0<_i8.Failure, _i9.NumberTrivia>()))
              as _i7.Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>);
}

/// A class which mocks [NumberTriviaRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockNumberTriviaRemoteDataSource extends _i1.Mock
    implements _i10.NumberTriviaRemoteDataSource {
  MockNumberTriviaRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i3.NumberTriviaModel> getConcreteNumberTrivia(int? number) =>
      (super.noSuchMethod(Invocation.method(#getConcreteNumberTrivia, [number]),
              returnValue: Future<_i3.NumberTriviaModel>.value(
                  _FakeNumberTriviaModel_1()))
          as _i7.Future<_i3.NumberTriviaModel>);
  @override
  _i7.Future<_i3.NumberTriviaModel> getRandomNumberTrivia() =>
      (super.noSuchMethod(Invocation.method(#getRandomNumberTrivia, []),
              returnValue: Future<_i3.NumberTriviaModel>.value(
                  _FakeNumberTriviaModel_1()))
          as _i7.Future<_i3.NumberTriviaModel>);
}

/// A class which mocks [NumberTriviaLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockNumberTriviaLocalDataSource extends _i1.Mock
    implements _i11.NumberTriviaLocalDataSource {
  MockNumberTriviaLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i3.NumberTriviaModel> getLastNumberTrivia() =>
      (super.noSuchMethod(Invocation.method(#getLastNumberTrivia, []),
              returnValue: Future<_i3.NumberTriviaModel>.value(
                  _FakeNumberTriviaModel_1()))
          as _i7.Future<_i3.NumberTriviaModel>);
  @override
  _i7.Future<void> cacheNumberTrivia(_i3.NumberTriviaModel? triviaToCache) =>
      (super.noSuchMethod(
          Invocation.method(#cacheNumberTrivia, [triviaToCache]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i12.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
}

/// A class which mocks [InternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnectionChecker extends _i1.Mock
    implements _i4.InternetConnectionChecker {
  MockInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i4.AddressCheckOptions> get addresses =>
      (super.noSuchMethod(Invocation.getter(#addresses),
              returnValue: <_i4.AddressCheckOptions>[])
          as List<_i4.AddressCheckOptions>);
  @override
  set addresses(List<_i4.AddressCheckOptions>? _addresses) =>
      super.noSuchMethod(Invocation.setter(#addresses, _addresses),
          returnValueForMissingStub: null);
  @override
  Duration get checkInterval =>
      (super.noSuchMethod(Invocation.getter(#checkInterval),
          returnValue: _FakeDuration_2()) as Duration);
  @override
  set checkInterval(Duration? _checkInterval) =>
      super.noSuchMethod(Invocation.setter(#checkInterval, _checkInterval),
          returnValueForMissingStub: null);
  @override
  _i7.Future<bool> get hasConnection =>
      (super.noSuchMethod(Invocation.getter(#hasConnection),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<_i4.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(Invocation.getter(#connectionStatus),
              returnValue: Future<_i4.InternetConnectionStatus>.value(
                  _i4.InternetConnectionStatus.connected))
          as _i7.Future<_i4.InternetConnectionStatus>);
  @override
  _i7.Stream<_i4.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(Invocation.getter(#onStatusChange),
              returnValue: Stream<_i4.InternetConnectionStatus>.empty())
          as _i7.Stream<_i4.InternetConnectionStatus>);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  bool get isActivelyChecking =>
      (super.noSuchMethod(Invocation.getter(#isActivelyChecking),
          returnValue: false) as bool);
  @override
  _i7.Future<_i4.AddressCheckResult> isHostReachable(
          _i4.AddressCheckOptions? options) =>
      (super.noSuchMethod(Invocation.method(#isHostReachable, [options]),
              returnValue: Future<_i4.AddressCheckResult>.value(
                  _FakeAddressCheckResult_3()))
          as _i7.Future<_i4.AddressCheckResult>);
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i13.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(Invocation.method(#getKeys, []),
      returnValue: <String>{}) as Set<String>);
  @override
  Object? get(String? key) =>
      (super.noSuchMethod(Invocation.method(#get, [key])) as Object?);
  @override
  bool? getBool(String? key) =>
      (super.noSuchMethod(Invocation.method(#getBool, [key])) as bool?);
  @override
  int? getInt(String? key) =>
      (super.noSuchMethod(Invocation.method(#getInt, [key])) as int?);
  @override
  double? getDouble(String? key) =>
      (super.noSuchMethod(Invocation.method(#getDouble, [key])) as double?);
  @override
  String? getString(String? key) =>
      (super.noSuchMethod(Invocation.method(#getString, [key])) as String?);
  @override
  bool containsKey(String? key) =>
      (super.noSuchMethod(Invocation.method(#containsKey, [key]),
          returnValue: false) as bool);
  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(#getStringList, [key]))
          as List<String>?);
  @override
  _i7.Future<bool> setBool(String? key, bool? value) =>
      (super.noSuchMethod(Invocation.method(#setBool, [key, value]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> setInt(String? key, int? value) =>
      (super.noSuchMethod(Invocation.method(#setInt, [key, value]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> setDouble(String? key, double? value) =>
      (super.noSuchMethod(Invocation.method(#setDouble, [key, value]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> setString(String? key, String? value) =>
      (super.noSuchMethod(Invocation.method(#setString, [key, value]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> setStringList(String? key, List<String>? value) =>
      (super.noSuchMethod(Invocation.method(#setStringList, [key, value]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> remove(String? key) =>
      (super.noSuchMethod(Invocation.method(#remove, [key]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> commit() =>
      (super.noSuchMethod(Invocation.method(#commit, []),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<bool> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i5.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i5.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_4()))
          as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_4()))
          as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i14.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_4()))
          as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i14.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_4()))
          as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i14.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_4()))
          as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i14.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i5.Response>.value(_FakeResponse_4()))
          as _i7.Future<_i5.Response>);
  @override
  _i7.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i15.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i15.Uint8List>.value(_i15.Uint8List(0)))
          as _i7.Future<_i15.Uint8List>);
  @override
  _i7.Future<_i5.StreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i5.StreamedResponse>.value(_FakeStreamedResponse_5()))
          as _i7.Future<_i5.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [InputConverter].
///
/// See the documentation for Mockito's code generation for more information.
class MockInputConverter extends _i1.Mock implements _i16.InputConverter {
  MockInputConverter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Either<_i8.Failure, int> stringToUnsignedInt(String? str) =>
      (super.noSuchMethod(Invocation.method(#stringToUnsignedInt, [str]),
              returnValue: _FakeEither_0<_i8.Failure, int>())
          as _i2.Either<_i8.Failure, int>);
}

/// A class which mocks [GetConcreteNumberTrivia].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetConcreteNumberTrivia extends _i1.Mock
    implements _i17.GetConcreteNumberTrivia {
  MockGetConcreteNumberTrivia() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.NumberTriviaRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
              returnValue: _FakeNumberTriviaRepository_6())
          as _i6.NumberTriviaRepository);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>> call(
          _i17.Params? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue: Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>.value(
              _FakeEither_0<_i8.Failure, _i9.NumberTrivia>())) as _i7
          .Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>);
}

/// A class which mocks [GetRandomNumberTrivia].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetRandomNumberTrivia extends _i1.Mock
    implements _i18.GetRandomNumberTrivia {
  MockGetRandomNumberTrivia() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.NumberTriviaRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
              returnValue: _FakeNumberTriviaRepository_6())
          as _i6.NumberTriviaRepository);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>> call(
          _i19.NoParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
          returnValue: Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>.value(
              _FakeEither_0<_i8.Failure, _i9.NumberTrivia>())) as _i7
          .Future<_i2.Either<_i8.Failure, _i9.NumberTrivia>>);
}
