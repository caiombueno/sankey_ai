// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../diagram_config_sm.dart';

class DiagramConfigSMMapper extends ClassMapperBase<DiagramConfigSM> {
  DiagramConfigSMMapper._();

  static DiagramConfigSMMapper? _instance;
  static DiagramConfigSMMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiagramConfigSMMapper._());
      DiagramNodeSMMapper.ensureInitialized();
      DiagramLinkSMMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiagramConfigSM';

  static List<DiagramNodeSM> _$nodes(DiagramConfigSM v) => v.nodes;
  static const Field<DiagramConfigSM, List<DiagramNodeSM>> _f$nodes =
      Field('nodes', _$nodes, opt: true, def: const []);
  static List<DiagramLinkSM> _$links(DiagramConfigSM v) => v.links;
  static const Field<DiagramConfigSM, List<DiagramLinkSM>> _f$links =
      Field('links', _$links, opt: true, def: const []);

  @override
  final MappableFields<DiagramConfigSM> fields = const {
    #nodes: _f$nodes,
    #links: _f$links,
  };

  static DiagramConfigSM _instantiate(DecodingData data) {
    return DiagramConfigSM(
        nodes: data.dec(_f$nodes), links: data.dec(_f$links));
  }

  @override
  final Function instantiate = _instantiate;

  static DiagramConfigSM fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiagramConfigSM>(map);
  }

  static DiagramConfigSM fromJson(String json) {
    return ensureInitialized().decodeJson<DiagramConfigSM>(json);
  }
}

mixin DiagramConfigSMMappable {
  DiagramConfigSMCopyWith<DiagramConfigSM, DiagramConfigSM, DiagramConfigSM>
      get copyWith =>
          _DiagramConfigSMCopyWithImpl<DiagramConfigSM, DiagramConfigSM>(
              this as DiagramConfigSM, $identity, $identity);
  @override
  String toString() {
    return DiagramConfigSMMapper.ensureInitialized()
        .stringifyValue(this as DiagramConfigSM);
  }

  @override
  bool operator ==(Object other) {
    return DiagramConfigSMMapper.ensureInitialized()
        .equalsValue(this as DiagramConfigSM, other);
  }

  @override
  int get hashCode {
    return DiagramConfigSMMapper.ensureInitialized()
        .hashValue(this as DiagramConfigSM);
  }
}

extension DiagramConfigSMValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiagramConfigSM, $Out> {
  DiagramConfigSMCopyWith<$R, DiagramConfigSM, $Out> get $asDiagramConfigSM =>
      $base.as((v, t, t2) => _DiagramConfigSMCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiagramConfigSMCopyWith<$R, $In extends DiagramConfigSM, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, DiagramNodeSM,
      DiagramNodeSMCopyWith<$R, DiagramNodeSM, DiagramNodeSM>> get nodes;
  ListCopyWith<$R, DiagramLinkSM,
      DiagramLinkSMCopyWith<$R, DiagramLinkSM, DiagramLinkSM>> get links;
  $R call({List<DiagramNodeSM>? nodes, List<DiagramLinkSM>? links});
  DiagramConfigSMCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DiagramConfigSMCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiagramConfigSM, $Out>
    implements DiagramConfigSMCopyWith<$R, DiagramConfigSM, $Out> {
  _DiagramConfigSMCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiagramConfigSM> $mapper =
      DiagramConfigSMMapper.ensureInitialized();
  @override
  ListCopyWith<$R, DiagramNodeSM,
          DiagramNodeSMCopyWith<$R, DiagramNodeSM, DiagramNodeSM>>
      get nodes => ListCopyWith(
          $value.nodes, (v, t) => v.copyWith.$chain(t), (v) => call(nodes: v));
  @override
  ListCopyWith<$R, DiagramLinkSM,
          DiagramLinkSMCopyWith<$R, DiagramLinkSM, DiagramLinkSM>>
      get links => ListCopyWith(
          $value.links, (v, t) => v.copyWith.$chain(t), (v) => call(links: v));
  @override
  $R call({List<DiagramNodeSM>? nodes, List<DiagramLinkSM>? links}) =>
      $apply(FieldCopyWithData({
        if (nodes != null) #nodes: nodes,
        if (links != null) #links: links
      }));
  @override
  DiagramConfigSM $make(CopyWithData data) => DiagramConfigSM(
      nodes: data.get(#nodes, or: $value.nodes),
      links: data.get(#links, or: $value.links));

  @override
  DiagramConfigSMCopyWith<$R2, DiagramConfigSM, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiagramConfigSMCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiagramNodeSMMapper extends ClassMapperBase<DiagramNodeSM> {
  DiagramNodeSMMapper._();

  static DiagramNodeSMMapper? _instance;
  static DiagramNodeSMMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiagramNodeSMMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiagramNodeSM';

  static int _$id(DiagramNodeSM v) => v.id;
  static const Field<DiagramNodeSM, int> _f$id = Field('id', _$id);
  static String? _$label(DiagramNodeSM v) => v.label;
  static const Field<DiagramNodeSM, String> _f$label = Field('label', _$label);

  @override
  final MappableFields<DiagramNodeSM> fields = const {
    #id: _f$id,
    #label: _f$label,
  };

  static DiagramNodeSM _instantiate(DecodingData data) {
    return DiagramNodeSM(id: data.dec(_f$id), label: data.dec(_f$label));
  }

  @override
  final Function instantiate = _instantiate;

  static DiagramNodeSM fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiagramNodeSM>(map);
  }

  static DiagramNodeSM fromJson(String json) {
    return ensureInitialized().decodeJson<DiagramNodeSM>(json);
  }
}

mixin DiagramNodeSMMappable {
  DiagramNodeSMCopyWith<DiagramNodeSM, DiagramNodeSM, DiagramNodeSM>
      get copyWith => _DiagramNodeSMCopyWithImpl<DiagramNodeSM, DiagramNodeSM>(
          this as DiagramNodeSM, $identity, $identity);
  @override
  String toString() {
    return DiagramNodeSMMapper.ensureInitialized()
        .stringifyValue(this as DiagramNodeSM);
  }

  @override
  bool operator ==(Object other) {
    return DiagramNodeSMMapper.ensureInitialized()
        .equalsValue(this as DiagramNodeSM, other);
  }

  @override
  int get hashCode {
    return DiagramNodeSMMapper.ensureInitialized()
        .hashValue(this as DiagramNodeSM);
  }
}

extension DiagramNodeSMValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiagramNodeSM, $Out> {
  DiagramNodeSMCopyWith<$R, DiagramNodeSM, $Out> get $asDiagramNodeSM =>
      $base.as((v, t, t2) => _DiagramNodeSMCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiagramNodeSMCopyWith<$R, $In extends DiagramNodeSM, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? label});
  DiagramNodeSMCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiagramNodeSMCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiagramNodeSM, $Out>
    implements DiagramNodeSMCopyWith<$R, DiagramNodeSM, $Out> {
  _DiagramNodeSMCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiagramNodeSM> $mapper =
      DiagramNodeSMMapper.ensureInitialized();
  @override
  $R call({int? id, Object? label = $none}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (label != $none) #label: label}));
  @override
  DiagramNodeSM $make(CopyWithData data) => DiagramNodeSM(
      id: data.get(#id, or: $value.id),
      label: data.get(#label, or: $value.label));

  @override
  DiagramNodeSMCopyWith<$R2, DiagramNodeSM, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiagramNodeSMCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiagramLinkSMMapper extends ClassMapperBase<DiagramLinkSM> {
  DiagramLinkSMMapper._();

  static DiagramLinkSMMapper? _instance;
  static DiagramLinkSMMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiagramLinkSMMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiagramLinkSM';

  static int _$source(DiagramLinkSM v) => v.source;
  static const Field<DiagramLinkSM, int> _f$source = Field('source', _$source);
  static int _$target(DiagramLinkSM v) => v.target;
  static const Field<DiagramLinkSM, int> _f$target = Field('target', _$target);
  static double? _$value(DiagramLinkSM v) => v.value;
  static const Field<DiagramLinkSM, double> _f$value =
      Field('value', _$value, opt: true);

  @override
  final MappableFields<DiagramLinkSM> fields = const {
    #source: _f$source,
    #target: _f$target,
    #value: _f$value,
  };

  static DiagramLinkSM _instantiate(DecodingData data) {
    return DiagramLinkSM(
        source: data.dec(_f$source),
        target: data.dec(_f$target),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static DiagramLinkSM fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiagramLinkSM>(map);
  }

  static DiagramLinkSM fromJson(String json) {
    return ensureInitialized().decodeJson<DiagramLinkSM>(json);
  }
}

mixin DiagramLinkSMMappable {
  DiagramLinkSMCopyWith<DiagramLinkSM, DiagramLinkSM, DiagramLinkSM>
      get copyWith => _DiagramLinkSMCopyWithImpl<DiagramLinkSM, DiagramLinkSM>(
          this as DiagramLinkSM, $identity, $identity);
  @override
  String toString() {
    return DiagramLinkSMMapper.ensureInitialized()
        .stringifyValue(this as DiagramLinkSM);
  }

  @override
  bool operator ==(Object other) {
    return DiagramLinkSMMapper.ensureInitialized()
        .equalsValue(this as DiagramLinkSM, other);
  }

  @override
  int get hashCode {
    return DiagramLinkSMMapper.ensureInitialized()
        .hashValue(this as DiagramLinkSM);
  }
}

extension DiagramLinkSMValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiagramLinkSM, $Out> {
  DiagramLinkSMCopyWith<$R, DiagramLinkSM, $Out> get $asDiagramLinkSM =>
      $base.as((v, t, t2) => _DiagramLinkSMCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiagramLinkSMCopyWith<$R, $In extends DiagramLinkSM, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? source, int? target, double? value});
  DiagramLinkSMCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiagramLinkSMCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiagramLinkSM, $Out>
    implements DiagramLinkSMCopyWith<$R, DiagramLinkSM, $Out> {
  _DiagramLinkSMCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiagramLinkSM> $mapper =
      DiagramLinkSMMapper.ensureInitialized();
  @override
  $R call({int? source, int? target, Object? value = $none}) =>
      $apply(FieldCopyWithData({
        if (source != null) #source: source,
        if (target != null) #target: target,
        if (value != $none) #value: value
      }));
  @override
  DiagramLinkSM $make(CopyWithData data) => DiagramLinkSM(
      source: data.get(#source, or: $value.source),
      target: data.get(#target, or: $value.target),
      value: data.get(#value, or: $value.value));

  @override
  DiagramLinkSMCopyWith<$R2, DiagramLinkSM, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiagramLinkSMCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
