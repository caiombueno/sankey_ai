import 'package:dart_mappable/dart_mappable.dart';

part 'generated/sankey_flow_state.mapper.dart';

@MappableClass()
class SankeyFlowState with SankeyFlowStateMappable {
  final String? prompt;

  const SankeyFlowState({this.prompt});
}
