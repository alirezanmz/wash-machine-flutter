// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TelemetryState {
  List<TelemetryEvent> get telemetryEvents =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelemetryStateCopyWith<TelemetryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryStateCopyWith<$Res> {
  factory $TelemetryStateCopyWith(
    TelemetryState value,
    $Res Function(TelemetryState) then,
  ) = _$TelemetryStateCopyWithImpl<$Res, TelemetryState>;
  @useResult
  $Res call({
    List<TelemetryEvent> telemetryEvents,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class _$TelemetryStateCopyWithImpl<$Res, $Val extends TelemetryState>
    implements $TelemetryStateCopyWith<$Res> {
  _$TelemetryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telemetryEvents = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            telemetryEvents: null == telemetryEvents
                ? _value.telemetryEvents
                : telemetryEvents // ignore: cast_nullable_to_non_nullable
                      as List<TelemetryEvent>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TelemetryStateImplCopyWith<$Res>
    implements $TelemetryStateCopyWith<$Res> {
  factory _$$TelemetryStateImplCopyWith(
    _$TelemetryStateImpl value,
    $Res Function(_$TelemetryStateImpl) then,
  ) = __$$TelemetryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<TelemetryEvent> telemetryEvents,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class __$$TelemetryStateImplCopyWithImpl<$Res>
    extends _$TelemetryStateCopyWithImpl<$Res, _$TelemetryStateImpl>
    implements _$$TelemetryStateImplCopyWith<$Res> {
  __$$TelemetryStateImplCopyWithImpl(
    _$TelemetryStateImpl _value,
    $Res Function(_$TelemetryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telemetryEvents = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$TelemetryStateImpl(
        telemetryEvents: null == telemetryEvents
            ? _value._telemetryEvents
            : telemetryEvents // ignore: cast_nullable_to_non_nullable
                  as List<TelemetryEvent>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$TelemetryStateImpl implements _TelemetryState {
  const _$TelemetryStateImpl({
    final List<TelemetryEvent> telemetryEvents = const [],
    this.isLoading = false,
    this.error,
  }) : _telemetryEvents = telemetryEvents;

  final List<TelemetryEvent> _telemetryEvents;
  @override
  @JsonKey()
  List<TelemetryEvent> get telemetryEvents {
    if (_telemetryEvents is EqualUnmodifiableListView) return _telemetryEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_telemetryEvents);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'TelemetryState(telemetryEvents: $telemetryEvents, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryStateImpl &&
            const DeepCollectionEquality().equals(
              other._telemetryEvents,
              _telemetryEvents,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_telemetryEvents),
    isLoading,
    error,
  );

  /// Create a copy of TelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryStateImplCopyWith<_$TelemetryStateImpl> get copyWith =>
      __$$TelemetryStateImplCopyWithImpl<_$TelemetryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TelemetryState implements TelemetryState {
  const factory _TelemetryState({
    final List<TelemetryEvent> telemetryEvents,
    final bool isLoading,
    final String? error,
  }) = _$TelemetryStateImpl;

  @override
  List<TelemetryEvent> get telemetryEvents;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of TelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelemetryStateImplCopyWith<_$TelemetryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
