// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../failures.dart';

class FailureMapper extends ClassMapperBase<Failure> {
  FailureMapper._();

  static FailureMapper? _instance;
  static FailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FailureMapper._());
      UnknownFailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Failure';

  @override
  final MappableFields<Failure> fields = const {};

  static Failure _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Failure', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static Failure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Failure>(map);
  }

  static Failure fromJson(String json) {
    return ensureInitialized().decodeJson<Failure>(json);
  }
}

mixin FailureMappable {
  String toJson();
  Map<String, dynamic> toMap();
  FailureCopyWith<Failure, Failure, Failure> get copyWith;
}

abstract class FailureCopyWith<$R, $In extends Failure, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  FailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class UnknownFailureMapper extends SubClassMapperBase<UnknownFailure> {
  UnknownFailureMapper._();

  static UnknownFailureMapper? _instance;
  static UnknownFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UnknownFailureMapper._());
      FailureMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'UnknownFailure';

  static Object _$underlyingException(UnknownFailure v) =>
      v.underlyingException;
  static const Field<UnknownFailure, Object> _f$underlyingException =
      Field('underlyingException', _$underlyingException);
  static StackTrace? _$underlyingStackTrace(UnknownFailure v) =>
      v.underlyingStackTrace;
  static const Field<UnknownFailure, StackTrace> _f$underlyingStackTrace =
      Field('underlyingStackTrace', _$underlyingStackTrace, opt: true);

  @override
  final MappableFields<UnknownFailure> fields = const {
    #underlyingException: _f$underlyingException,
    #underlyingStackTrace: _f$underlyingStackTrace,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'UnknownFailure';
  @override
  late final ClassMapperBase superMapper = FailureMapper.ensureInitialized();

  static UnknownFailure _instantiate(DecodingData data) {
    return UnknownFailure(
        underlyingException: data.dec(_f$underlyingException),
        underlyingStackTrace: data.dec(_f$underlyingStackTrace));
  }

  @override
  final Function instantiate = _instantiate;

  static UnknownFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UnknownFailure>(map);
  }

  static UnknownFailure fromJson(String json) {
    return ensureInitialized().decodeJson<UnknownFailure>(json);
  }
}

mixin UnknownFailureMappable {
  String toJson() {
    return UnknownFailureMapper.ensureInitialized()
        .encodeJson<UnknownFailure>(this as UnknownFailure);
  }

  Map<String, dynamic> toMap() {
    return UnknownFailureMapper.ensureInitialized()
        .encodeMap<UnknownFailure>(this as UnknownFailure);
  }

  UnknownFailureCopyWith<UnknownFailure, UnknownFailure, UnknownFailure>
      get copyWith =>
          _UnknownFailureCopyWithImpl<UnknownFailure, UnknownFailure>(
              this as UnknownFailure, $identity, $identity);
  @override
  String toString() {
    return UnknownFailureMapper.ensureInitialized()
        .stringifyValue(this as UnknownFailure);
  }

  @override
  bool operator ==(Object other) {
    return UnknownFailureMapper.ensureInitialized()
        .equalsValue(this as UnknownFailure, other);
  }

  @override
  int get hashCode {
    return UnknownFailureMapper.ensureInitialized()
        .hashValue(this as UnknownFailure);
  }
}

extension UnknownFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UnknownFailure, $Out> {
  UnknownFailureCopyWith<$R, UnknownFailure, $Out> get $asUnknownFailure =>
      $base.as((v, t, t2) => _UnknownFailureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UnknownFailureCopyWith<$R, $In extends UnknownFailure, $Out>
    implements FailureCopyWith<$R, $In, $Out> {
  @override
  $R call({Object? underlyingException, StackTrace? underlyingStackTrace});
  UnknownFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UnknownFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UnknownFailure, $Out>
    implements UnknownFailureCopyWith<$R, UnknownFailure, $Out> {
  _UnknownFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UnknownFailure> $mapper =
      UnknownFailureMapper.ensureInitialized();
  @override
  $R call(
          {Object? underlyingException,
          Object? underlyingStackTrace = $none}) =>
      $apply(FieldCopyWithData({
        if (underlyingException != null)
          #underlyingException: underlyingException,
        if (underlyingStackTrace != $none)
          #underlyingStackTrace: underlyingStackTrace
      }));
  @override
  UnknownFailure $make(CopyWithData data) => UnknownFailure(
      underlyingException:
          data.get(#underlyingException, or: $value.underlyingException),
      underlyingStackTrace:
          data.get(#underlyingStackTrace, or: $value.underlyingStackTrace));

  @override
  UnknownFailureCopyWith<$R2, UnknownFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UnknownFailureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
