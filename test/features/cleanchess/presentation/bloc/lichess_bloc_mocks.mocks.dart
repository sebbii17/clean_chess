// Mocks generated by Mockito 5.3.2 from annotations
// in cleanchess/test/features/cleanchess/presentation/bloc/lichess_bloc_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:cleanchess/chess/error/failures.dart' as _i8;
import 'package:cleanchess/chess/utilities/utils.dart' as _i12;
import 'package:cleanchess/core/usecases/usecase.dart' as _i11;
import 'package:cleanchess/features/clean_chess/data/repositories/lichess/lichess_account_repository.dart'
    as _i4;
import 'package:cleanchess/features/clean_chess/data/repositories/lichess/lichess_oauth_repository.dart'
    as _i2;
import 'package:cleanchess/features/clean_chess/data/repositories/lichess/lichess_team_repository.dart'
    as _i5;
import 'package:cleanchess/features/clean_chess/domain/usecases/oauth/lichess/lichess_oauth_lib.dart'
    as _i9;
import 'package:dartz/dartz.dart' as _i3;
import 'package:lichess_client_dio/lichess_client_dio.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;

import 'lichess_bloc_mocks.dart' as _i6;

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

class _FakeLichessOAuthRepository_0 extends _i1.SmartFake
    implements _i2.LichessOAuthRepository {
  _FakeLichessOAuthRepository_0(
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

class _FakeLichessAccountRepository_2 extends _i1.SmartFake
    implements _i4.LichessAccountRepository {
  _FakeLichessAccountRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLichessTeamRepository_3 extends _i1.SmartFake
    implements _i5.LichessTeamRepository {
  _FakeLichessTeamRepository_3(
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
class MockMLichessOAuth extends _i1.Mock implements _i6.MLichessOAuth {
  @override
  _i2.LichessOAuthRepository get oAuthRepository => (super.noSuchMethod(
        Invocation.getter(#oAuthRepository),
        returnValue: _FakeLichessOAuthRepository_0(
          this,
          Invocation.getter(#oAuthRepository),
        ),
        returnValueForMissingStub: _FakeLichessOAuthRepository_0(
          this,
          Invocation.getter(#oAuthRepository),
        ),
      ) as _i2.LichessOAuthRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, Map<String, String>>> call(
          _i9.LichessOAuthParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, Map<String, String>>>.value(
                _FakeEither_1<_i8.Failure, Map<String, String>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, Map<String, String>>>.value(
                _FakeEither_1<_i8.Failure, Map<String, String>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, Map<String, String>>>);
}

/// A class which mocks [MLichessGainAccessToken].
///
/// See the documentation for Mockito's code generation for more information.
class MockMLichessGainAccessToken extends _i1.Mock
    implements _i6.MLichessGainAccessToken {
  @override
  _i2.LichessOAuthRepository get oAuthRepository => (super.noSuchMethod(
        Invocation.getter(#oAuthRepository),
        returnValue: _FakeLichessOAuthRepository_0(
          this,
          Invocation.getter(#oAuthRepository),
        ),
        returnValueForMissingStub: _FakeLichessOAuthRepository_0(
          this,
          Invocation.getter(#oAuthRepository),
        ),
      ) as _i2.LichessOAuthRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, String>> call(
          _i9.LichessGainAccessTokenParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, String>>.value(
            _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, String>>.value(
                _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, String>>);
}

/// A class which mocks [MGetMyProfile].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyProfile extends _i1.Mock implements _i6.MGetMyProfile {
  @override
  _i4.LichessAccountRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.LichessAccountRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, _i10.User>> call(_i11.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, _i10.User>>.value(
            _FakeEither_1<_i8.Failure, _i10.User>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, _i10.User>>.value(
                _FakeEither_1<_i8.Failure, _i10.User>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, _i10.User>>);
}

/// A class which mocks [MGetMyEmail].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyEmail extends _i1.Mock implements _i6.MGetMyEmail {
  @override
  _i4.LichessAccountRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.LichessAccountRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, String>> call(_i11.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, String>>.value(
            _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, String>>.value(
                _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, String>>);
}

/// A class which mocks [MGetMyKidModeStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyKidModeStatus extends _i1.Mock
    implements _i6.MGetMyKidModeStatus {
  @override
  _i4.LichessAccountRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.LichessAccountRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> call(_i11.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
}

/// A class which mocks [MSetMyKidModeStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockMSetMyKidModeStatus extends _i1.Mock
    implements _i6.MSetMyKidModeStatus {
  @override
  _i4.LichessAccountRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.LichessAccountRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, _i12.Empty>> call(bool? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, _i12.Empty>>.value(
            _FakeEither_1<_i8.Failure, _i12.Empty>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, _i12.Empty>>.value(
                _FakeEither_1<_i8.Failure, _i12.Empty>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, _i12.Empty>>);
}

/// A class which mocks [MGetMyPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetMyPreferences extends _i1.Mock implements _i6.MGetMyPreferences {
  @override
  _i4.LichessAccountRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessAccountRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.LichessAccountRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, _i10.UserPreferences>> call(
          _i11.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, _i10.UserPreferences>>.value(
                _FakeEither_1<_i8.Failure, _i10.UserPreferences>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, _i10.UserPreferences>>.value(
                _FakeEither_1<_i8.Failure, _i10.UserPreferences>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, _i10.UserPreferences>>);
}

/// A class which mocks [MGetTeamsByUser].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetTeamsByUser extends _i1.Mock implements _i6.MGetTeamsByUser {
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i10.Team>>> call(String? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, List<_i10.Team>>>.value(
            _FakeEither_1<_i8.Failure, List<_i10.Team>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, List<_i10.Team>>>.value(
                _FakeEither_1<_i8.Failure, List<_i10.Team>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, List<_i10.Team>>>);
}

/// A class which mocks [MGetTeamById].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetTeamById extends _i1.Mock implements _i6.MGetTeamById {
  @override
  _i7.Future<_i3.Either<_i8.Failure, _i10.Team>> call(String? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, _i10.Team>>.value(
            _FakeEither_1<_i8.Failure, _i10.Team>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, _i10.Team>>.value(
                _FakeEither_1<_i8.Failure, _i10.Team>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, _i10.Team>>);
}

/// A class which mocks [MGetTeamMembers].
///
/// See the documentation for Mockito's code generation for more information.
class MockMGetTeamMembers extends _i1.Mock implements _i6.MGetTeamMembers {
  @override
  _i5.LichessTeamRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeLichessTeamRepository_3(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeLichessTeamRepository_3(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.LichessTeamRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i10.User>>> call(String? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, List<_i10.User>>>.value(
            _FakeEither_1<_i8.Failure, List<_i10.User>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, List<_i10.User>>>.value(
                _FakeEither_1<_i8.Failure, List<_i10.User>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, List<_i10.User>>>);
}
