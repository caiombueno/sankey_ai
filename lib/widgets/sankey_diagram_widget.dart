import 'package:flutter/material.dart';
import 'package:sankey_flutter/sankey_helpers.dart';
import 'package:sankey_flutter/sankey_link.dart';
import 'package:sankey_flutter/sankey_node.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'dart:typed_data';

/// A widget that displays a Sankey diagram from JSON data
class CustomSankeyDiagram extends StatefulWidget {
  /// The data for the Sankey diagram
  final Map<String, dynamic> data;
  
  /// Whether to show the save button
  final bool showSaveButton;
  
  const CustomSankeyDiagram({
    super.key, 
    required this.data,
    this.showSaveButton = true,
  });

  @override
  State<CustomSankeyDiagram> createState() => _CustomSankeyDiagramState();
}

class _CustomSankeyDiagramState extends State<CustomSankeyDiagram> {
  late List<SankeyNode> nodes;
  late List<SankeyLink> links;
  late Map<String, Color> nodeColors;
  late SankeyDataSet sankeyDataSet;
  late Size diagramSize;
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
    _processData(widget.data);
  }

  void _processData(Map<String, dynamic> data) {
    // Parse nodes from JSON data
    final List<dynamic> nodeData = data['nodes'];
    nodes = nodeData
        .map((node) => SankeyNode(
              id: node['id'],
              label: node['label'],
            ))
        .toList();

    // Parse links from JSON data
    final List<dynamic> linkData = data['links'];
    links = linkData
        .map((link) => SankeyLink(
              source: nodes[link['source']],
              target: nodes[link['target']],
              value: link['value'].toDouble(),
            ))
        .toList();

    // Calculate the optimal size based on the number of nodes and links
    _calculateOptimalSize();

    // Automatically generate a color map for the nodes using their labels
    nodeColors = generateDefaultNodeColorMap(nodes);

    // Combine the nodes and links into a data set
    sankeyDataSet = SankeyDataSet(nodes: nodes, links: links);

    // Generate the layout using a helper that configures the layout engine
    final sankey = generateSankeyLayout(
      width: diagramSize.width,
      height: diagramSize.height,
      nodeWidth: 10, // Smaller node width for compact display
      nodePadding: 15, // Smaller padding between nodes
    );
    sankeyDataSet.layout(sankey);
  }

  void _calculateOptimalSize() {
    // Count unique source and target nodes to estimate layers
    Set<int> sourceNodes = {};
    Set<int> targetNodes = {};

    for (var link in links) {
      sourceNodes.add(link.source.id);
      targetNodes.add(link.target.id);
    }

    // Estimate number of layers and max nodes per layer
    int estimatedLayers = 2; // Minimum 2 layers (source and target)
    if (nodes.length > 4) {
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

  Future<void> _saveDiagramAsPng() async {
    try {
      // Show loading indicator
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Saving diagram as PNG...')),
      );

      // Capture the widget as an image
      final Uint8List? imageBytes = await screenshotController.capture();

      if (imageBytes != null) {
        // Save to gallery
        await ImageGallerySaver.saveImage(
          imageBytes,
          name: 'sankey_diagram_${DateTime.now().millisecondsSinceEpoch}.png',
          quality: 100,
        );
        if (!mounted) return;
        // Show success message
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Diagram saved to gallery')),
        );
      } else {
        if (!mounted) return;
        // Show error message
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to capture diagram')),
        );
      }
    } catch (e) {
      // Show error message
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving diagram: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.showSaveButton)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton.icon(
              onPressed: _saveDiagramAsPng,
              icon: const Icon(Icons.save),
              label: const Text('Save as PNG'),
            ),
          ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Screenshot(
              controller: screenshotController,
              child: SankeyDiagramWidget(
                data: sankeyDataSet,
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
