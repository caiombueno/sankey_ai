// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../sankey_diagram_state.dart';

class SankeyDiagramStateMapper extends ClassMapperBase<SankeyDiagramState> {
  SankeyDiagramStateMapper._();

  static SankeyDiagramStateMapper? _instance;
  static SankeyDiagramStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SankeyDiagramStateMapper._());
      SankeyDiagramLoadingMapper.ensureInitialized();
      SankeyDiagramFailedMapper.ensureInitialized();
      SankeyDiagramLoadedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SankeyDiagramState';

  @override
  final MappableFields<SankeyDiagramState> fields = const {};

  static SankeyDiagramState _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'SankeyDiagramState', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static SankeyDiagramState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SankeyDiagramState>(map);
  }

  static SankeyDiagramState fromJson(String json) {
    return ensureInitialized().decodeJson<SankeyDiagramState>(json);
  }
}

mixin SankeyDiagramStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  SankeyDiagramStateCopyWith<SankeyDiagramState, SankeyDiagramState,
      SankeyDiagramState> get copyWith;
}

abstract class SankeyDiagramStateCopyWith<$R, $In extends SankeyDiagramState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  SankeyDiagramStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class SankeyDiagramLoadingMapper
    extends SubClassMapperBase<SankeyDiagramLoading> {
  SankeyDiagramLoadingMapper._();

  static SankeyDiagramLoadingMapper? _instance;
  static SankeyDiagramLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SankeyDiagramLoadingMapper._());
      SankeyDiagramStateMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SankeyDiagramLoading';

  @override
  final MappableFields<SankeyDiagramLoading> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'SankeyDiagramLoading';
  @override
  late final ClassMapperBase superMapper =
      SankeyDiagramStateMapper.ensureInitialized();

  static SankeyDiagramLoading _instantiate(DecodingData data) {
    return SankeyDiagramLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static SankeyDiagramLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SankeyDiagramLoading>(map);
  }

  static SankeyDiagramLoading fromJson(String json) {
    return ensureInitialized().decodeJson<SankeyDiagramLoading>(json);
  }
}

mixin SankeyDiagramLoadingMappable {
  String toJson() {
    return SankeyDiagramLoadingMapper.ensureInitialized()
        .encodeJson<SankeyDiagramLoading>(this as SankeyDiagramLoading);
  }

  Map<String, dynamic> toMap() {
    return SankeyDiagramLoadingMapper.ensureInitialized()
        .encodeMap<SankeyDiagramLoading>(this as SankeyDiagramLoading);
  }

  SankeyDiagramLoadingCopyWith<SankeyDiagramLoading, SankeyDiagramLoading,
      SankeyDiagramLoading> get copyWith => _SankeyDiagramLoadingCopyWithImpl<
          SankeyDiagramLoading, SankeyDiagramLoading>(
      this as SankeyDiagramLoading, $identity, $identity);
  @override
  String toString() {
    return SankeyDiagramLoadingMapper.ensureInitialized()
        .stringifyValue(this as SankeyDiagramLoading);
  }

  @override
  bool operator ==(Object other) {
    return SankeyDiagramLoadingMapper.ensureInitialized()
        .equalsValue(this as SankeyDiagramLoading, other);
  }

  @override
  int get hashCode {
    return SankeyDiagramLoadingMapper.ensureInitialized()
        .hashValue(this as SankeyDiagramLoading);
  }
}

extension SankeyDiagramLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SankeyDiagramLoading, $Out> {
  SankeyDiagramLoadingCopyWith<$R, SankeyDiagramLoading, $Out>
      get $asSankeyDiagramLoading => $base.as(
          (v, t, t2) => _SankeyDiagramLoadingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SankeyDiagramLoadingCopyWith<
    $R,
    $In extends SankeyDiagramLoading,
    $Out> implements SankeyDiagramStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SankeyDiagramLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SankeyDiagramLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SankeyDiagramLoading, $Out>
    implements SankeyDiagramLoadingCopyWith<$R, SankeyDiagramLoading, $Out> {
  _SankeyDiagramLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SankeyDiagramLoading> $mapper =
      SankeyDiagramLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SankeyDiagramLoading $make(CopyWithData data) => SankeyDiagramLoading();

  @override
  SankeyDiagramLoadingCopyWith<$R2, SankeyDiagramLoading, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SankeyDiagramLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SankeyDiagramFailedMapper
    extends SubClassMapperBase<SankeyDiagramFailed> {
  SankeyDiagramFailedMapper._();

  static SankeyDiagramFailedMapper? _instance;
  static SankeyDiagramFailedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SankeyDiagramFailedMapper._());
      SankeyDiagramStateMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SankeyDiagramFailed';

  @override
  final MappableFields<SankeyDiagramFailed> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'SankeyDiagramFailed';
  @override
  late final ClassMapperBase superMapper =
      SankeyDiagramStateMapper.ensureInitialized();

  static SankeyDiagramFailed _instantiate(DecodingData data) {
    return SankeyDiagramFailed();
  }

  @override
  final Function instantiate = _instantiate;

  static SankeyDiagramFailed fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SankeyDiagramFailed>(map);
  }

  static SankeyDiagramFailed fromJson(String json) {
    return ensureInitialized().decodeJson<SankeyDiagramFailed>(json);
  }
}

mixin SankeyDiagramFailedMappable {
  String toJson() {
    return SankeyDiagramFailedMapper.ensureInitialized()
        .encodeJson<SankeyDiagramFailed>(this as SankeyDiagramFailed);
  }

  Map<String, dynamic> toMap() {
    return SankeyDiagramFailedMapper.ensureInitialized()
        .encodeMap<SankeyDiagramFailed>(this as SankeyDiagramFailed);
  }

  SankeyDiagramFailedCopyWith<SankeyDiagramFailed, SankeyDiagramFailed,
      SankeyDiagramFailed> get copyWith => _SankeyDiagramFailedCopyWithImpl<
          SankeyDiagramFailed, SankeyDiagramFailed>(
      this as SankeyDiagramFailed, $identity, $identity);
  @override
  String toString() {
    return SankeyDiagramFailedMapper.ensureInitialized()
        .stringifyValue(this as SankeyDiagramFailed);
  }

  @override
  bool operator ==(Object other) {
    return SankeyDiagramFailedMapper.ensureInitialized()
        .equalsValue(this as SankeyDiagramFailed, other);
  }

  @override
  int get hashCode {
    return SankeyDiagramFailedMapper.ensureInitialized()
        .hashValue(this as SankeyDiagramFailed);
  }
}

extension SankeyDiagramFailedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SankeyDiagramFailed, $Out> {
  SankeyDiagramFailedCopyWith<$R, SankeyDiagramFailed, $Out>
      get $asSankeyDiagramFailed => $base.as(
          (v, t, t2) => _SankeyDiagramFailedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SankeyDiagramFailedCopyWith<$R, $In extends SankeyDiagramFailed,
    $Out> implements SankeyDiagramStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SankeyDiagramFailedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SankeyDiagramFailedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SankeyDiagramFailed, $Out>
    implements SankeyDiagramFailedCopyWith<$R, SankeyDiagramFailed, $Out> {
  _SankeyDiagramFailedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SankeyDiagramFailed> $mapper =
      SankeyDiagramFailedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SankeyDiagramFailed $make(CopyWithData data) => SankeyDiagramFailed();

  @override
  SankeyDiagramFailedCopyWith<$R2, SankeyDiagramFailed, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SankeyDiagramFailedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SankeyDiagramLoadedMapper
    extends SubClassMapperBase<SankeyDiagramLoaded> {
  SankeyDiagramLoadedMapper._();

  static SankeyDiagramLoadedMapper? _instance;
  static SankeyDiagramLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SankeyDiagramLoadedMapper._());
      SankeyDiagramStateMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SankeyDiagramLoaded';

  static SankeyDataSet _$dataSet(SankeyDiagramLoaded v) => v.dataSet;
  static const Field<SankeyDiagramLoaded, SankeyDataSet> _f$dataSet =
      Field('dataSet', _$dataSet);

  @override
  final MappableFields<SankeyDiagramLoaded> fields = const {
    #dataSet: _f$dataSet,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'SankeyDiagramLoaded';
  @override
  late final ClassMapperBase superMapper =
      SankeyDiagramStateMapper.ensureInitialized();

  static SankeyDiagramLoaded _instantiate(DecodingData data) {
    return SankeyDiagramLoaded(dataSet: data.dec(_f$dataSet));
  }

  @override
  final Function instantiate = _instantiate;

  static SankeyDiagramLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SankeyDiagramLoaded>(map);
  }

  static SankeyDiagramLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<SankeyDiagramLoaded>(json);
  }
}

mixin SankeyDiagramLoadedMappable {
  String toJson() {
    return SankeyDiagramLoadedMapper.ensureInitialized()
        .encodeJson<SankeyDiagramLoaded>(this as SankeyDiagramLoaded);
  }

  Map<String, dynamic> toMap() {
    return SankeyDiagramLoadedMapper.ensureInitialized()
        .encodeMap<SankeyDiagramLoaded>(this as SankeyDiagramLoaded);
  }

  SankeyDiagramLoadedCopyWith<SankeyDiagramLoaded, SankeyDiagramLoaded,
      SankeyDiagramLoaded> get copyWith => _SankeyDiagramLoadedCopyWithImpl<
          SankeyDiagramLoaded, SankeyDiagramLoaded>(
      this as SankeyDiagramLoaded, $identity, $identity);
  @override
  String toString() {
    return SankeyDiagramLoadedMapper.ensureInitialized()
        .stringifyValue(this as SankeyDiagramLoaded);
  }

  @override
  bool operator ==(Object other) {
    return SankeyDiagramLoadedMapper.ensureInitialized()
        .equalsValue(this as SankeyDiagramLoaded, other);
  }

  @override
  int get hashCode {
    return SankeyDiagramLoadedMapper.ensureInitialized()
        .hashValue(this as SankeyDiagramLoaded);
  }
}

extension SankeyDiagramLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SankeyDiagramLoaded, $Out> {
  SankeyDiagramLoadedCopyWith<$R, SankeyDiagramLoaded, $Out>
      get $asSankeyDiagramLoaded => $base.as(
          (v, t, t2) => _SankeyDiagramLoadedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SankeyDiagramLoadedCopyWith<$R, $In extends SankeyDiagramLoaded,
    $Out> implements SankeyDiagramStateCopyWith<$R, $In, $Out> {
  @override
  $R call({SankeyDataSet? dataSet});
  SankeyDiagramLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SankeyDiagramLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SankeyDiagramLoaded, $Out>
    implements SankeyDiagramLoadedCopyWith<$R, SankeyDiagramLoaded, $Out> {
  _SankeyDiagramLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SankeyDiagramLoaded> $mapper =
      SankeyDiagramLoadedMapper.ensureInitialized();
  @override
  $R call({SankeyDataSet? dataSet}) =>
      $apply(FieldCopyWithData({if (dataSet != null) #dataSet: dataSet}));
  @override
  SankeyDiagramLoaded $make(CopyWithData data) =>
      SankeyDiagramLoaded(dataSet: data.get(#dataSet, or: $value.dataSet));

  @override
  SankeyDiagramLoadedCopyWith<$R2, SankeyDiagramLoaded, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SankeyDiagramLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
