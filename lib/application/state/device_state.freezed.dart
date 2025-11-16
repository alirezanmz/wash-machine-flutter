// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeviceState {
  Device? get device => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of DeviceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceStateCopyWith<DeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStateCopyWith<$Res> {
  factory $DeviceStateCopyWith(
    DeviceState value,
    $Res Function(DeviceState) then,
  ) = _$DeviceStateCopyWithImpl<$Res, DeviceState>;
  @useResult
  $Res call({Device? device, bool isLoading, String? error});

  $DeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$DeviceStateCopyWithImpl<$Res, $Val extends DeviceState>
    implements $DeviceStateCopyWith<$Res> {
  _$DeviceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            device: freezed == device
                ? _value.device
                : device // ignore: cast_nullable_to_non_nullable
                      as Device?,
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

  /// Create a copy of DeviceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceStateImplCopyWith<$Res>
    implements $DeviceStateCopyWith<$Res> {
  factory _$$DeviceStateImplCopyWith(
    _$DeviceStateImpl value,
    $Res Function(_$DeviceStateImpl) then,
  ) = __$$DeviceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Device? device, bool isLoading, String? error});

  @override
  $DeviceCopyWith<$Res>? get device;
}

/// @nodoc
class __$$DeviceStateImplCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res, _$DeviceStateImpl>
    implements _$$DeviceStateImplCopyWith<$Res> {
  __$$DeviceStateImplCopyWithImpl(
    _$DeviceStateImpl _value,
    $Res Function(_$DeviceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$DeviceStateImpl(
        device: freezed == device
            ? _value.device
            : device // ignore: cast_nullable_to_non_nullable
                  as Device?,
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

class _$DeviceStateImpl implements _DeviceState {
  const _$DeviceStateImpl({this.device, this.isLoading = false, this.error});

  @override
  final Device? device;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'DeviceState(device: $device, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceStateImpl &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device, isLoading, error);

  /// Create a copy of DeviceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceStateImplCopyWith<_$DeviceStateImpl> get copyWith =>
      __$$DeviceStateImplCopyWithImpl<_$DeviceStateImpl>(this, _$identity);
}

abstract class _DeviceState implements DeviceState {
  const factory _DeviceState({
    final Device? device,
    final bool isLoading,
    final String? error,
  }) = _$DeviceStateImpl;

  @override
  Device? get device;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of DeviceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceStateImplCopyWith<_$DeviceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
