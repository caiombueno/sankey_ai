import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sankey_ai/src/data/diagram_config/repositories/diagram_config_data_repository.dart';
import 'package:sankey_ai/src/service_locator/service_locator.dart';
import 'package:sankey_flutter/sankey.dart';
import 'package:sankey_flutter/sankey_helpers.dart';
import 'package:sankey_flutter/sankey_link.dart';
import 'package:sankey_flutter/sankey_node.dart';

import 'sankey_diagram_state.dart';
export 'sankey_diagram_state.dart';

class SankeyDiagramCubit extends Cubit<SankeyDiagramState> {
  SankeyDiagramCubit({
    required this.prompt,
  }) : super(const SankeyDiagramLoading());
  final String prompt;

  final _diagramConfigDataRepository = sl<DiagramConfigDataRepository>();

  Future<void> generateDiagram() async {
    emit(const SankeyDiagramLoading());
    final result =
        await _diagramConfigDataRepository.getDiagramConfig(prompt: prompt);
    result.fold(
      (failure) => emit(const SankeyDiagramFailed()),
      (diagramConfig) {
        final nodes = diagramConfig.nodes;
        final sankeyNodes = nodes
            .map((node) => SankeyNode(id: node.id, label: node.label))
            .toList();

        // Create a map of node IDs to SankeyNode objects for easy lookup
        final nodeMap = {for (var node in sankeyNodes) node.id: node};

        final links = diagramConfig.links;
        final sankeyLinks = links
            .map(
              (link) {
                // Check if both source and target nodes exist in the nodeMap
                final sourceNode = nodeMap[link.source];
                final targetNode = nodeMap[link.target];

                if (link.value != null &&
                    sourceNode != null &&
                    targetNode != null) {
                  return SankeyLink(
                    source: sourceNode,
                    target: targetNode,
                    value: link.value!,
                  );
                }
                return null;
              },
            )
            .nonNulls
            .toList();

        emit(
          SankeyDiagramLoaded(
            dataSet: SankeyDataSet(
              nodes: sankeyNodes,
              links: sankeyLinks,
            ),
          ),
        );
      },
    );
  }
}
