import 'package:dart_mappable/dart_mappable.dart';
import 'package:sankey_flutter/sankey_helpers.dart';

part 'generated/sankey_diagram_state.mapper.dart';

@MappableClass()
sealed class SankeyDiagramState with SankeyDiagramStateMappable {
  const SankeyDiagramState();
}

@MappableClass()
final class SankeyDiagramLoading extends SankeyDiagramState
    with SankeyDiagramLoadingMappable {
  const SankeyDiagramLoading();
}

@MappableClass()
final class SankeyDiagramFailed extends SankeyDiagramState
    with SankeyDiagramFailedMappable {
  const SankeyDiagramFailed();
}

@MappableClass()
final class SankeyDiagramLoaded extends SankeyDiagramState
    with SankeyDiagramLoadedMappable {
  final SankeyDataSet dataSet;

  const SankeyDiagramLoaded({required this.dataSet});
}
