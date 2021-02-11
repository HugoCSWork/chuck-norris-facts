// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chuck_norris_facts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChuckNorrisFactsEventTearOff {
  const _$ChuckNorrisFactsEventTearOff();

// ignore: unused_element
  _getRandomChuckNorrisFact getRandomChuckNorrisFact() {
    return const _getRandomChuckNorrisFact();
  }
}

/// @nodoc
// ignore: unused_element
const $ChuckNorrisFactsEvent = _$ChuckNorrisFactsEventTearOff();

/// @nodoc
mixin _$ChuckNorrisFactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getRandomChuckNorrisFact(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getRandomChuckNorrisFact(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getRandomChuckNorrisFact(_getRandomChuckNorrisFact value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getRandomChuckNorrisFact(_getRandomChuckNorrisFact value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChuckNorrisFactsEventCopyWith<$Res> {
  factory $ChuckNorrisFactsEventCopyWith(ChuckNorrisFactsEvent value,
          $Res Function(ChuckNorrisFactsEvent) then) =
      _$ChuckNorrisFactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChuckNorrisFactsEventCopyWithImpl<$Res>
    implements $ChuckNorrisFactsEventCopyWith<$Res> {
  _$ChuckNorrisFactsEventCopyWithImpl(this._value, this._then);

  final ChuckNorrisFactsEvent _value;
  // ignore: unused_field
  final $Res Function(ChuckNorrisFactsEvent) _then;
}

/// @nodoc
abstract class _$getRandomChuckNorrisFactCopyWith<$Res> {
  factory _$getRandomChuckNorrisFactCopyWith(_getRandomChuckNorrisFact value,
          $Res Function(_getRandomChuckNorrisFact) then) =
      __$getRandomChuckNorrisFactCopyWithImpl<$Res>;
}

/// @nodoc
class __$getRandomChuckNorrisFactCopyWithImpl<$Res>
    extends _$ChuckNorrisFactsEventCopyWithImpl<$Res>
    implements _$getRandomChuckNorrisFactCopyWith<$Res> {
  __$getRandomChuckNorrisFactCopyWithImpl(_getRandomChuckNorrisFact _value,
      $Res Function(_getRandomChuckNorrisFact) _then)
      : super(_value, (v) => _then(v as _getRandomChuckNorrisFact));

  @override
  _getRandomChuckNorrisFact get _value =>
      super._value as _getRandomChuckNorrisFact;
}

/// @nodoc
class _$_getRandomChuckNorrisFact implements _getRandomChuckNorrisFact {
  const _$_getRandomChuckNorrisFact();

  @override
  String toString() {
    return 'ChuckNorrisFactsEvent.getRandomChuckNorrisFact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _getRandomChuckNorrisFact);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getRandomChuckNorrisFact(),
  }) {
    assert(getRandomChuckNorrisFact != null);
    return getRandomChuckNorrisFact();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getRandomChuckNorrisFact(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getRandomChuckNorrisFact != null) {
      return getRandomChuckNorrisFact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getRandomChuckNorrisFact(_getRandomChuckNorrisFact value),
  }) {
    assert(getRandomChuckNorrisFact != null);
    return getRandomChuckNorrisFact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getRandomChuckNorrisFact(_getRandomChuckNorrisFact value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getRandomChuckNorrisFact != null) {
      return getRandomChuckNorrisFact(this);
    }
    return orElse();
  }
}

abstract class _getRandomChuckNorrisFact implements ChuckNorrisFactsEvent {
  const factory _getRandomChuckNorrisFact() = _$_getRandomChuckNorrisFact;
}

/// @nodoc
class _$ChuckNorrisFactsStateTearOff {
  const _$ChuckNorrisFactsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(ChuckNorrisFact chuckNorrisFact) {
    return _LoadSuccess(
      chuckNorrisFact,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(String err) {
    return _LoadFailure(
      err,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChuckNorrisFactsState = _$ChuckNorrisFactsStateTearOff();

/// @nodoc
mixin _$ChuckNorrisFactsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    @required TResult loadFailure(String err),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    TResult loadFailure(String err),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChuckNorrisFactsStateCopyWith<$Res> {
  factory $ChuckNorrisFactsStateCopyWith(ChuckNorrisFactsState value,
          $Res Function(ChuckNorrisFactsState) then) =
      _$ChuckNorrisFactsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChuckNorrisFactsStateCopyWithImpl<$Res>
    implements $ChuckNorrisFactsStateCopyWith<$Res> {
  _$ChuckNorrisFactsStateCopyWithImpl(this._value, this._then);

  final ChuckNorrisFactsState _value;
  // ignore: unused_field
  final $Res Function(ChuckNorrisFactsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ChuckNorrisFactsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChuckNorrisFactsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    @required TResult loadFailure(String err),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    TResult loadFailure(String err),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChuckNorrisFactsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ChuckNorrisFactsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ChuckNorrisFactsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    @required TResult loadFailure(String err),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    TResult loadFailure(String err),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ChuckNorrisFactsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({ChuckNorrisFact chuckNorrisFact});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ChuckNorrisFactsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object chuckNorrisFact = freezed,
  }) {
    return _then(_LoadSuccess(
      chuckNorrisFact == freezed
          ? _value.chuckNorrisFact
          : chuckNorrisFact as ChuckNorrisFact,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.chuckNorrisFact) : assert(chuckNorrisFact != null);

  @override
  final ChuckNorrisFact chuckNorrisFact;

  @override
  String toString() {
    return 'ChuckNorrisFactsState.loadSuccess(chuckNorrisFact: $chuckNorrisFact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.chuckNorrisFact, chuckNorrisFact) ||
                const DeepCollectionEquality()
                    .equals(other.chuckNorrisFact, chuckNorrisFact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chuckNorrisFact);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    @required TResult loadFailure(String err),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(chuckNorrisFact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    TResult loadFailure(String err),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(chuckNorrisFact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ChuckNorrisFactsState {
  const factory _LoadSuccess(ChuckNorrisFact chuckNorrisFact) = _$_LoadSuccess;

  ChuckNorrisFact get chuckNorrisFact;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({String err});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ChuckNorrisFactsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object err = freezed,
  }) {
    return _then(_LoadFailure(
      err == freezed ? _value.err : err as String,
    ));
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.err) : assert(err != null);

  @override
  final String err;

  @override
  String toString() {
    return 'ChuckNorrisFactsState.loadFailure(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(err);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    @required TResult loadFailure(String err),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ChuckNorrisFact chuckNorrisFact),
    TResult loadFailure(String err),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ChuckNorrisFactsState {
  const factory _LoadFailure(String err) = _$_LoadFailure;

  String get err;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
