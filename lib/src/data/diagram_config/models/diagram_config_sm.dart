import 'package:dart_mappable/dart_mappable.dart';
import 'package:sankey_ai/src/utils/custom_mappable_generate_methods.dart';

part 'generated/diagram_config_sm.mapper.dart';

@MappableClass(
  generateMethods: CustomMappableGenerateMethods.excludeEncode,
)
class DiagramConfigSM with DiagramConfigSMMappable {
  final List<DiagramNodeSM> nodes;
  final List<DiagramLinkSM> links;

  DiagramConfigSM({
    this.nodes = const [],
    this.links = const [],
  });
}

@MappableClass(
  generateMethods: CustomMappableGenerateMethods.excludeEncode,
)
class DiagramNodeSM with DiagramNodeSMMappable {
  final int id;
  final String? label;

  DiagramNodeSM({required this.id, required this.label});
}

@MappableClass(
  generateMethods: CustomMappableGenerateMethods.excludeEncode,
)
class DiagramLinkSM with DiagramLinkSMMappable {
  final int source;
  final int target;
  final double? value;

  DiagramLinkSM({required this.source, required this.target, this.value});
}
