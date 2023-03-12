// Mocks generated by Mockito 5.3.2 from annotations
// in cleanchess/test/features/cleanchess/presentation/bloc/lichess_bloc_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:cleanchess/chess/error/failures.dart' as _i6;
import 'package:cleanchess/chess/utilities/utils.dart' as _i10;
import 'package:cleanchess/core/usecases/usecase.dart' as _i9;
import 'package:cleanchess/features/clean_chess/domain/repositories/lichess_repositoy.dart'
    as _i2;
import 'package:cleanchess/features/clean_chess/domain/usecases/oauth/oauth.dart'
    as _i7;
import 'package:dartz/dartz.dart' as _i3;
import 'package:lichess_client_dio/lichess_client_dio.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;

import 'lichess_bloc_mocks.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLichessRepository_0 extends _i1.SmartFake
    implements _i2.LichessRepository {
  _FakeLichessRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MLichessOAuth].
///
/// See the documentation for Mockito's code generation for more information.
class MockMLichessOAuth extends _i1.Mock implements _i4.MLichessOAuth {
  @override
  _i2.LichessRepository get lichessRepository => (super.noSuchMethod(
        Invocation.getter(#lichessRepository),
        returnValue: _FakeLichessRepository_0(
          this,
          Invocation.getter(#lichessRepository),
        ),
        returnValueForMissingStub: _FakeLichessRepository_0(
          this,
          Invocation.getter(#lichessRepository),
        ),
      ) as _i2.LichessRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, Map<String, String>>> call(
          _i7.LichessOAuthParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i5.Future<_i3.Either<_i6.Failure, Map<String, String>>>.value(
                _FakeEither_1<_i6.Failure, Map<String, String>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, Map<String, String>>>.value(
                _FakeEither_1<_i6.Failure, Map<String, String>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, Map<String, String>>>);
}

/// A class which mocks [MLichessGainAccessToken].
///
/// See the documentation for Mockito's code generation for more information.
class MockMLichessGainAccessToken extends _i1.Mock
    implements _i4.MLichessGainAccessToken {
  @override
  _i2.LichessRepository get lichessRepository => (super.noSuchMethod(
        Invocation.getter(#lichessRepository),
        returnValue: _FakeLichessRepository_0(
          this,
          Invocation.getter(#lichessRepository),
        ),
        returnValueForMissingStub: _FakeLichessRepository_0(
          this,
          Invocation.getter(#lichessRepository),
        ),
      ) as _i2.LichessRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> call(
          _i7.LichessGainAccessTokenParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, String>>.value(
            _FakeEither_1<_i6.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, String>>.value(
                _FakeEither_1<_i6.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, String>>);
}

/// A class which mocks [MGetMyProfile].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyProfile extends _i1.Mock implements _i4.MGetMyProfile {
  @override
  _i2.LichessRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.LichessRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i8.User>> call(_i9.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, _i8.User>>.value(
            _FakeEither_1<_i6.Failure, _i8.User>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, _i8.User>>.value(
                _FakeEither_1<_i6.Failure, _i8.User>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, _i8.User>>);
}

/// A class which mocks [MGetMyEmail].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyEmail extends _i1.Mock implements _i4.MGetMyEmail {
  @override
  _i2.LichessRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.LichessRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> call(_i9.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, String>>.value(
            _FakeEither_1<_i6.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, String>>.value(
                _FakeEither_1<_i6.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, String>>);
}

/// A class which mocks [MGetMyKidModeStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyKidModeStatus extends _i1.Mock
    implements _i4.MGetMyKidModeStatus {
  @override
  _i2.LichessRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.LichessRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(_i9.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
                _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [MSetMyKidModeStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockMSetMyKidModeStatus extends _i1.Mock
    implements _i4.MSetMyKidModeStatus {
  @override
  _i2.LichessRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.LichessRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i10.Empty>> call(bool? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, _i10.Empty>>.value(
            _FakeEither_1<_i6.Failure, _i10.Empty>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, _i10.Empty>>.value(
                _FakeEither_1<_i6.Failure, _i10.Empty>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, _i10.Empty>>);
}
