// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../diagram_config.dart';

class DiagramConfigMapper extends ClassMapperBase<DiagramConfig> {
  DiagramConfigMapper._();

  static DiagramConfigMapper? _instance;
  static DiagramConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiagramConfigMapper._());
      DiagramNodeMapper.ensureInitialized();
      DiagramLinkMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiagramConfig';

  static List<DiagramNode> _$nodes(DiagramConfig v) => v.nodes;
  static const Field<DiagramConfig, List<DiagramNode>> _f$nodes =
      Field('nodes', _$nodes, opt: true, def: const []);
  static List<DiagramLink> _$links(DiagramConfig v) => v.links;
  static const Field<DiagramConfig, List<DiagramLink>> _f$links =
      Field('links', _$links, opt: true, def: const []);

  @override
  final MappableFields<DiagramConfig> fields = const {
    #nodes: _f$nodes,
    #links: _f$links,
  };

  static DiagramConfig _instantiate(DecodingData data) {
    return DiagramConfig(nodes: data.dec(_f$nodes), links: data.dec(_f$links));
  }

  @override
  final Function instantiate = _instantiate;

  static DiagramConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiagramConfig>(map);
  }

  static DiagramConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiagramConfig>(json);
  }
}

mixin DiagramConfigMappable {
  DiagramConfigCopyWith<DiagramConfig, DiagramConfig, DiagramConfig>
      get copyWith => _DiagramConfigCopyWithImpl<DiagramConfig, DiagramConfig>(
          this as DiagramConfig, $identity, $identity);
  @override
  String toString() {
    return DiagramConfigMapper.ensureInitialized()
        .stringifyValue(this as DiagramConfig);
  }

  @override
  bool operator ==(Object other) {
    return DiagramConfigMapper.ensureInitialized()
        .equalsValue(this as DiagramConfig, other);
  }

  @override
  int get hashCode {
    return DiagramConfigMapper.ensureInitialized()
        .hashValue(this as DiagramConfig);
  }
}

extension DiagramConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiagramConfig, $Out> {
  DiagramConfigCopyWith<$R, DiagramConfig, $Out> get $asDiagramConfig =>
      $base.as((v, t, t2) => _DiagramConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiagramConfigCopyWith<$R, $In extends DiagramConfig, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, DiagramNode,
      DiagramNodeCopyWith<$R, DiagramNode, DiagramNode>> get nodes;
  ListCopyWith<$R, DiagramLink,
      DiagramLinkCopyWith<$R, DiagramLink, DiagramLink>> get links;
  $R call({List<DiagramNode>? nodes, List<DiagramLink>? links});
  DiagramConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiagramConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiagramConfig, $Out>
    implements DiagramConfigCopyWith<$R, DiagramConfig, $Out> {
  _DiagramConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiagramConfig> $mapper =
      DiagramConfigMapper.ensureInitialized();
  @override
  ListCopyWith<$R, DiagramNode,
          DiagramNodeCopyWith<$R, DiagramNode, DiagramNode>>
      get nodes => ListCopyWith(
          $value.nodes, (v, t) => v.copyWith.$chain(t), (v) => call(nodes: v));
  @override
  ListCopyWith<$R, DiagramLink,
          DiagramLinkCopyWith<$R, DiagramLink, DiagramLink>>
      get links => ListCopyWith(
          $value.links, (v, t) => v.copyWith.$chain(t), (v) => call(links: v));
  @override
  $R call({List<DiagramNode>? nodes, List<DiagramLink>? links}) =>
      $apply(FieldCopyWithData({
        if (nodes != null) #nodes: nodes,
        if (links != null) #links: links
      }));
  @override
  DiagramConfig $make(CopyWithData data) => DiagramConfig(
      nodes: data.get(#nodes, or: $value.nodes),
      links: data.get(#links, or: $value.links));

  @override
  DiagramConfigCopyWith<$R2, DiagramConfig, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiagramConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiagramNodeMapper extends ClassMapperBase<DiagramNode> {
  DiagramNodeMapper._();

  static DiagramNodeMapper? _instance;
  static DiagramNodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiagramNodeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiagramNode';

  static int _$id(DiagramNode v) => v.id;
  static const Field<DiagramNode, int> _f$id = Field('id', _$id);
  static String? _$label(DiagramNode v) => v.label;
  static const Field<DiagramNode, String> _f$label = Field('label', _$label);

  @override
  final MappableFields<DiagramNode> fields = const {
    #id: _f$id,
    #label: _f$label,
  };

  static DiagramNode _instantiate(DecodingData data) {
    return DiagramNode(id: data.dec(_f$id), label: data.dec(_f$label));
  }

  @override
  final Function instantiate = _instantiate;

  static DiagramNode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiagramNode>(map);
  }

  static DiagramNode fromJson(String json) {
    return ensureInitialized().decodeJson<DiagramNode>(json);
  }
}

mixin DiagramNodeMappable {
  DiagramNodeCopyWith<DiagramNode, DiagramNode, DiagramNode> get copyWith =>
      _DiagramNodeCopyWithImpl<DiagramNode, DiagramNode>(
          this as DiagramNode, $identity, $identity);
  @override
  String toString() {
    return DiagramNodeMapper.ensureInitialized()
        .stringifyValue(this as DiagramNode);
  }

  @override
  bool operator ==(Object other) {
    return DiagramNodeMapper.ensureInitialized()
        .equalsValue(this as DiagramNode, other);
  }

  @override
  int get hashCode {
    return DiagramNodeMapper.ensureInitialized().hashValue(this as DiagramNode);
  }
}

extension DiagramNodeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiagramNode, $Out> {
  DiagramNodeCopyWith<$R, DiagramNode, $Out> get $asDiagramNode =>
      $base.as((v, t, t2) => _DiagramNodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiagramNodeCopyWith<$R, $In extends DiagramNode, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? label});
  DiagramNodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiagramNodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiagramNode, $Out>
    implements DiagramNodeCopyWith<$R, DiagramNode, $Out> {
  _DiagramNodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiagramNode> $mapper =
      DiagramNodeMapper.ensureInitialized();
  @override
  $R call({int? id, Object? label = $none}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (label != $none) #label: label}));
  @override
  DiagramNode $make(CopyWithData data) => DiagramNode(
      id: data.get(#id, or: $value.id),
      label: data.get(#label, or: $value.label));

  @override
  DiagramNodeCopyWith<$R2, DiagramNode, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiagramNodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiagramLinkMapper extends ClassMapperBase<DiagramLink> {
  DiagramLinkMapper._();

  static DiagramLinkMapper? _instance;
  static DiagramLinkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiagramLinkMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiagramLink';

  static int _$source(DiagramLink v) => v.source;
  static const Field<DiagramLink, int> _f$source = Field('source', _$source);
  static int _$target(DiagramLink v) => v.target;
  static const Field<DiagramLink, int> _f$target = Field('target', _$target);
  static double? _$value(DiagramLink v) => v.value;
  static const Field<DiagramLink, double> _f$value =
      Field('value', _$value, opt: true);

  @override
  final MappableFields<DiagramLink> fields = const {
    #source: _f$source,
    #target: _f$target,
    #value: _f$value,
  };

  static DiagramLink _instantiate(DecodingData data) {
    return DiagramLink(
        source: data.dec(_f$source),
        target: data.dec(_f$target),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static DiagramLink fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiagramLink>(map);
  }

  static DiagramLink fromJson(String json) {
    return ensureInitialized().decodeJson<DiagramLink>(json);
  }
}

mixin DiagramLinkMappable {
  DiagramLinkCopyWith<DiagramLink, DiagramLink, DiagramLink> get copyWith =>
      _DiagramLinkCopyWithImpl<DiagramLink, DiagramLink>(
          this as DiagramLink, $identity, $identity);
  @override
  String toString() {
    return DiagramLinkMapper.ensureInitialized()
        .stringifyValue(this as DiagramLink);
  }

  @override
  bool operator ==(Object other) {
    return DiagramLinkMapper.ensureInitialized()
        .equalsValue(this as DiagramLink, other);
  }

  @override
  int get hashCode {
    return DiagramLinkMapper.ensureInitialized().hashValue(this as DiagramLink);
  }
}

extension DiagramLinkValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiagramLink, $Out> {
  DiagramLinkCopyWith<$R, DiagramLink, $Out> get $asDiagramLink =>
      $base.as((v, t, t2) => _DiagramLinkCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DiagramLinkCopyWith<$R, $In extends DiagramLink, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? source, int? target, double? value});
  DiagramLinkCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DiagramLinkCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiagramLink, $Out>
    implements DiagramLinkCopyWith<$R, DiagramLink, $Out> {
  _DiagramLinkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiagramLink> $mapper =
      DiagramLinkMapper.ensureInitialized();
  @override
  $R call({int? source, int? target, Object? value = $none}) =>
      $apply(FieldCopyWithData({
        if (source != null) #source: source,
        if (target != null) #target: target,
        if (value != $none) #value: value
      }));
  @override
  DiagramLink $make(CopyWithData data) => DiagramLink(
      source: data.get(#source, or: $value.source),
      target: data.get(#target, or: $value.target),
      value: data.get(#value, or: $value.value));

  @override
  DiagramLinkCopyWith<$R2, DiagramLink, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiagramLinkCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
