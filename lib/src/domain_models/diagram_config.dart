import 'package:dart_mappable/dart_mappable.dart';
import 'package:sankey_ai/src/utils/custom_mappable_generate_methods.dart';

part 'generated/diagram_config.mapper.dart';

@MappableClass(
  generateMethods: CustomMappableGenerateMethods.excludeEncode,
)
class DiagramConfig with DiagramConfigMappable {
  final List<DiagramNode> nodes;
  final List<DiagramLink> links;

  DiagramConfig({
    this.nodes = const [],
    this.links = const [],
  });
}

@MappableClass(
  generateMethods: CustomMappableGenerateMethods.excludeEncode,
)
class DiagramNode with DiagramNodeMappable {
  final int id;
  final String? label;

  DiagramNode({required this.id, required this.label});
}

@MappableClass(
  generateMethods: CustomMappableGenerateMethods.excludeEncode,
)
class DiagramLink with DiagramLinkMappable {
  final int source;
  final int target;
  final double? value;

  DiagramLink({required this.source, required this.target, this.value});
}
