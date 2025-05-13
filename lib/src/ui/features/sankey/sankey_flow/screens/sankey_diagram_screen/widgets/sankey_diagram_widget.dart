import 'package:flutter/material.dart';
import 'package:sankey_flutter/sankey_helpers.dart';
import 'package:sankey_flutter/sankey_node.dart';
import 'package:screenshot/screenshot.dart';

/// A widget that displays a Sankey diagram from JSON data
class CustomSankeyDiagram extends StatefulWidget {
  /// The data for the Sankey diagram
  final SankeyDataSet dataSet;

  const CustomSankeyDiagram({
    super.key,
    required this.dataSet,
  });

  @override
  State<CustomSankeyDiagram> createState() => _CustomSankeyDiagramState();
}

class _CustomSankeyDiagramState extends State<CustomSankeyDiagram> {
  late Map<String, Color> nodeColors;

  late Size diagramSize;
  final ScreenshotController screenshotController = ScreenshotController();

  SankeyDataSet get dataSet => widget.dataSet;

  @override
  void initState() {
    super.initState();

    // Calculate the optimal size based on the number of nodes and links
    _calculateOptimalSize();

    // Automatically generate a color map for the nodes using their labels
    nodeColors = generateDefaultNodeColorMap(dataSet.nodes);

    // Generate the layout using a helper that configures the layout engine
    final sankey = generateSankeyLayout(
      width: diagramSize.width,
      height: diagramSize.height,
      nodeWidth: 10, // Smaller node width for compact display
      nodePadding: 15, // Smaller padding between nodes
    );

    if (dataSet.nodes.isEmpty || dataSet.links.isEmpty) {
      return;
    }

    dataSet.layout(sankey);
  }

  void _calculateOptimalSize() {
    // Count unique source and target nodes to estimate layers
    Set<int> sourceNodes = {};
    Set<int> targetNodes = {};

    for (var link in dataSet.links) {
      sourceNodes.add((link.source as SankeyNode).id);
      targetNodes.add((link.target as SankeyNode).id);
    }

    // Estimate number of layers and max nodes per layer
    int estimatedLayers = 2; // Minimum 2 layers (source and target)
    if (dataSet.nodes.length > 4) {
      estimatedLayers = 3; // Add middle layer for larger diagrams
    }

    // Calculate max nodes in any layer
    int maxNodesInLayer = sourceNodes.length > targetNodes.length
        ? sourceNodes.length
        : targetNodes.length;

    // Base dimensions - minimum size even for small diagrams
    double baseWidth = 200;
    double baseHeight = 150;

    // Calculate dimensions based on nodes and layers
    double width =
        baseWidth + (maxNodesInLayer * 30); // 30px per node in a layer
    double height = baseHeight + (estimatedLayers * 25); // 25px per layer

    // Ensure minimum size and cap maximum size
    width = width.clamp(200, 400); // Min 200, max 400
    height = height.clamp(150, 300); // Min 150, max 300

    // Set the diagram size
    diagramSize = Size(width, height);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Screenshot(
              controller: screenshotController,
              child: SankeyDiagramWidget(
                data: dataSet,
                nodeColors: nodeColors,
                selectedNodeId: null,
                onNodeTap: null,
                size: diagramSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
