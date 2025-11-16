// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TelemetryEvent _$TelemetryEventFromJson(Map<String, dynamic> json) {
  return _TelemetryEvent.fromJson(json);
}

/// @nodoc
mixin _$TelemetryEvent {
  String get id => throw _privateConstructorUsedError;
  String get deviceCode => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get waterLevel => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TelemetryEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelemetryEventCopyWith<TelemetryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryEventCopyWith<$Res> {
  factory $TelemetryEventCopyWith(
    TelemetryEvent value,
    $Res Function(TelemetryEvent) then,
  ) = _$TelemetryEventCopyWithImpl<$Res, TelemetryEvent>;
  @useResult
  $Res call({
    String id,
    String deviceCode,
    double temperature,
    double waterLevel,
    DateTime timestamp,
  });
}

/// @nodoc
class _$TelemetryEventCopyWithImpl<$Res, $Val extends TelemetryEvent>
    implements $TelemetryEventCopyWith<$Res> {
  _$TelemetryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceCode = null,
    Object? temperature = null,
    Object? waterLevel = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceCode: null == deviceCode
                ? _value.deviceCode
                : deviceCode // ignore: cast_nullable_to_non_nullable
                      as String,
            temperature: null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                      as double,
            waterLevel: null == waterLevel
                ? _value.waterLevel
                : waterLevel // ignore: cast_nullable_to_non_nullable
                      as double,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TelemetryEventImplCopyWith<$Res>
    implements $TelemetryEventCopyWith<$Res> {
  factory _$$TelemetryEventImplCopyWith(
    _$TelemetryEventImpl value,
    $Res Function(_$TelemetryEventImpl) then,
  ) = __$$TelemetryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String deviceCode,
    double temperature,
    double waterLevel,
    DateTime timestamp,
  });
}

/// @nodoc
class __$$TelemetryEventImplCopyWithImpl<$Res>
    extends _$TelemetryEventCopyWithImpl<$Res, _$TelemetryEventImpl>
    implements _$$TelemetryEventImplCopyWith<$Res> {
  __$$TelemetryEventImplCopyWithImpl(
    _$TelemetryEventImpl _value,
    $Res Function(_$TelemetryEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceCode = null,
    Object? temperature = null,
    Object? waterLevel = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$TelemetryEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceCode: null == deviceCode
            ? _value.deviceCode
            : deviceCode // ignore: cast_nullable_to_non_nullable
                  as String,
        temperature: null == temperature
            ? _value.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as double,
        waterLevel: null == waterLevel
            ? _value.waterLevel
            : waterLevel // ignore: cast_nullable_to_non_nullable
                  as double,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryEventImpl implements _TelemetryEvent {
  const _$TelemetryEventImpl({
    required this.id,
    required this.deviceCode,
    required this.temperature,
    required this.waterLevel,
    required this.timestamp,
  });

  factory _$TelemetryEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryEventImplFromJson(json);

  @override
  final String id;
  @override
  final String deviceCode;
  @override
  final double temperature;
  @override
  final double waterLevel;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'TelemetryEvent(id: $id, deviceCode: $deviceCode, temperature: $temperature, waterLevel: $waterLevel, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceCode, deviceCode) ||
                other.deviceCode == deviceCode) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.waterLevel, waterLevel) ||
                other.waterLevel == waterLevel) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    deviceCode,
    temperature,
    waterLevel,
    timestamp,
  );

  /// Create a copy of TelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryEventImplCopyWith<_$TelemetryEventImpl> get copyWith =>
      __$$TelemetryEventImplCopyWithImpl<_$TelemetryEventImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryEventImplToJson(this);
  }
}

abstract class _TelemetryEvent implements TelemetryEvent {
  const factory _TelemetryEvent({
    required final String id,
    required final String deviceCode,
    required final double temperature,
    required final double waterLevel,
    required final DateTime timestamp,
  }) = _$TelemetryEventImpl;

  factory _TelemetryEvent.fromJson(Map<String, dynamic> json) =
      _$TelemetryEventImpl.fromJson;

  @override
  String get id;
  @override
  String get deviceCode;
  @override
  double get temperature;
  @override
  double get waterLevel;
  @override
  DateTime get timestamp;

  /// Create a copy of TelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelemetryEventImplCopyWith<_$TelemetryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
