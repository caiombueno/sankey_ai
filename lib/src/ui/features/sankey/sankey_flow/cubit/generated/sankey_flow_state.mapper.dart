// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../sankey_flow_state.dart';

class SankeyFlowStateMapper extends ClassMapperBase<SankeyFlowState> {
  SankeyFlowStateMapper._();

  static SankeyFlowStateMapper? _instance;
  static SankeyFlowStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SankeyFlowStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SankeyFlowState';

  static String? _$prompt(SankeyFlowState v) => v.prompt;
  static const Field<SankeyFlowState, String> _f$prompt =
      Field('prompt', _$prompt, opt: true);

  @override
  final MappableFields<SankeyFlowState> fields = const {
    #prompt: _f$prompt,
  };

  static SankeyFlowState _instantiate(DecodingData data) {
    return SankeyFlowState(prompt: data.dec(_f$prompt));
  }

  @override
  final Function instantiate = _instantiate;

  static SankeyFlowState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SankeyFlowState>(map);
  }

  static SankeyFlowState fromJson(String json) {
    return ensureInitialized().decodeJson<SankeyFlowState>(json);
  }
}

mixin SankeyFlowStateMappable {
  String toJson() {
    return SankeyFlowStateMapper.ensureInitialized()
        .encodeJson<SankeyFlowState>(this as SankeyFlowState);
  }

  Map<String, dynamic> toMap() {
    return SankeyFlowStateMapper.ensureInitialized()
        .encodeMap<SankeyFlowState>(this as SankeyFlowState);
  }

  SankeyFlowStateCopyWith<SankeyFlowState, SankeyFlowState, SankeyFlowState>
      get copyWith =>
          _SankeyFlowStateCopyWithImpl<SankeyFlowState, SankeyFlowState>(
              this as SankeyFlowState, $identity, $identity);
  @override
  String toString() {
    return SankeyFlowStateMapper.ensureInitialized()
        .stringifyValue(this as SankeyFlowState);
  }

  @override
  bool operator ==(Object other) {
    return SankeyFlowStateMapper.ensureInitialized()
        .equalsValue(this as SankeyFlowState, other);
  }

  @override
  int get hashCode {
    return SankeyFlowStateMapper.ensureInitialized()
        .hashValue(this as SankeyFlowState);
  }
}

extension SankeyFlowStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SankeyFlowState, $Out> {
  SankeyFlowStateCopyWith<$R, SankeyFlowState, $Out> get $asSankeyFlowState =>
      $base.as((v, t, t2) => _SankeyFlowStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SankeyFlowStateCopyWith<$R, $In extends SankeyFlowState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? prompt});
  SankeyFlowStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SankeyFlowStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SankeyFlowState, $Out>
    implements SankeyFlowStateCopyWith<$R, SankeyFlowState, $Out> {
  _SankeyFlowStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SankeyFlowState> $mapper =
      SankeyFlowStateMapper.ensureInitialized();
  @override
  $R call({Object? prompt = $none}) =>
      $apply(FieldCopyWithData({if (prompt != $none) #prompt: prompt}));
  @override
  SankeyFlowState $make(CopyWithData data) =>
      SankeyFlowState(prompt: data.get(#prompt, or: $value.prompt));

  @override
  SankeyFlowStateCopyWith<$R2, SankeyFlowState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SankeyFlowStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
