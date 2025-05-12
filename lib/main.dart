import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sankey_ai/flavors.dart';
import 'package:sankey_ai/widgets/sankey_diagram_widget.dart';

void main() {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sankey Diagram Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SankeyExamplesPage(),
    );
  }
}

class SankeyExamplesPage extends StatelessWidget {
  const SankeyExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sankey Diagram Examples'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          _buildExampleTile(context, 'Small (4 nodes)', sampleData1),
          _buildExampleTile(context, 'Medium (8 nodes)', sampleData2),
          _buildExampleTile(context, 'Large (12 nodes)', sampleData3),
          _buildExampleTile(context, 'Complex (16 nodes)', sampleData4),
        ],
      ),
    );
  }

  Widget _buildExampleTile(
      BuildContext context, String title, Map<String, dynamic> data) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(
            '${data['nodes'].length} nodes, ${data['links'].length} links'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SankeyDiagramPage(data: data),
            ),
          );
        },
      ),
    );
  }
}

class SankeyDiagramPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const SankeyDiagramPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sankey Diagram Example'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomSankeyDiagram(data: data),
      ),
    );
  }
}

// Sample data with 4 nodes and 4 links (small diagram)
final Map<String, dynamic> sampleData1 = {
  'nodes': [
    {'id': 0, 'label': 'Source A'},
    {'id': 1, 'label': 'Source B'},
    {'id': 2, 'label': 'Dest C'},
    {'id': 3, 'label': 'Dest D'},
  ],
  'links': [
    {'source': 0, 'target': 2, 'value': 5},
    {'source': 0, 'target': 3, 'value': 3},
    {'source': 1, 'target': 2, 'value': 2},
    {'source': 1, 'target': 3, 'value': 4},
  ],
};

// Sample data with 8 nodes and 10 links (medium diagram)
final Map<String, dynamic> sampleData2 = {
  'nodes': [
    {'id': 0, 'label': 'Source A'},
    {'id': 1, 'label': 'Source B'},
    {'id': 2, 'label': 'Source C'},
    {'id': 3, 'label': 'Mid D'},
    {'id': 4, 'label': 'Mid E'},
    {'id': 5, 'label': 'Dest F'},
    {'id': 6, 'label': 'Dest G'},
    {'id': 7, 'label': 'Dest H'},
  ],
  'links': [
    {'source': 0, 'target': 3, 'value': 5},
    {'source': 0, 'target': 4, 'value': 3},
    {'source': 1, 'target': 3, 'value': 2},
    {'source': 1, 'target': 4, 'value': 4},
    {'source': 2, 'target': 4, 'value': 6},
    {'source': 3, 'target': 5, 'value': 4},
    {'source': 3, 'target': 6, 'value': 3},
    {'source': 4, 'target': 5, 'value': 2},
    {'source': 4, 'target': 6, 'value': 3},
    {'source': 4, 'target': 7, 'value': 5},
  ],
};

// Sample data with 12 nodes and 16 links (large diagram)
final Map<String, dynamic> sampleData3 = {
  'nodes': [
    {'id': 0, 'label': 'Source A'},
    {'id': 1, 'label': 'Source B'},
    {'id': 2, 'label': 'Source C'},
    {'id': 3, 'label': 'Source D'},
    {'id': 4, 'label': 'Mid E'},
    {'id': 5, 'label': 'Mid F'},
    {'id': 6, 'label': 'Mid G'},
    {'id': 7, 'label': 'Mid H'},
    {'id': 8, 'label': 'Dest I'},
    {'id': 9, 'label': 'Dest J'},
    {'id': 10, 'label': 'Dest K'},
    {'id': 11, 'label': 'Dest L'},
  ],
  'links': [
    {'source': 0, 'target': 4, 'value': 5},
    {'source': 0, 'target': 5, 'value': 3},
    {'source': 1, 'target': 5, 'value': 2},
    {'source': 1, 'target': 6, 'value': 4},
    {'source': 2, 'target': 6, 'value': 6},
    {'source': 2, 'target': 7, 'value': 2},
    {'source': 3, 'target': 7, 'value': 5},
    {'source': 4, 'target': 8, 'value': 4},
    {'source': 4, 'target': 9, 'value': 3},
    {'source': 5, 'target': 9, 'value': 2},
    {'source': 5, 'target': 10, 'value': 3},
    {'source': 6, 'target': 10, 'value': 5},
    {'source': 6, 'target': 11, 'value': 2},
    {'source': 7, 'target': 8, 'value': 3},
    {'source': 7, 'target': 10, 'value': 4},
    {'source': 7, 'target': 11, 'value': 3},
  ],
};

// Sample data with 16 nodes and 24 links (complex diagram)
final Map<String, dynamic> sampleData4 = {
  'nodes': [
    {'id': 0, 'label': 'Source A'},
    {'id': 1, 'label': 'Source B'},
    {'id': 2, 'label': 'Source C'},
    {'id': 3, 'label': 'Source D'},
    {'id': 4, 'label': 'Mid E'},
    {'id': 5, 'label': 'Mid F'},
    {'id': 6, 'label': 'Mid G'},
    {'id': 7, 'label': 'Mid H'},
    {'id': 8, 'label': 'Mid I'},
    {'id': 9, 'label': 'Mid J'},
    {'id': 10, 'label': 'Mid K'},
    {'id': 11, 'label': 'Mid L'},
    {'id': 12, 'label': 'Dest M'},
    {'id': 13, 'label': 'Dest N'},
    {'id': 14, 'label': 'Dest O'},
    {'id': 15, 'label': 'Dest P'},
  ],
  'links': [
    {'source': 0, 'target': 4, 'value': 5},
    {'source': 0, 'target': 5, 'value': 3},
    {'source': 0, 'target': 6, 'value': 2},
    {'source': 1, 'target': 6, 'value': 4},
    {'source': 1, 'target': 7, 'value': 6},
    {'source': 1, 'target': 8, 'value': 2},
    {'source': 2, 'target': 8, 'value': 5},
    {'source': 2, 'target': 9, 'value': 4},
    {'source': 3, 'target': 9, 'value': 3},
    {'source': 3, 'target': 10, 'value': 2},
    {'source': 3, 'target': 11, 'value': 3},
    {'source': 4, 'target': 12, 'value': 5},
    {'source': 5, 'target': 12, 'value': 2},
    {'source': 5, 'target': 13, 'value': 3},
    {'source': 6, 'target': 13, 'value': 4},
    {'source': 7, 'target': 13, 'value': 3},
    {'source': 8, 'target': 14, 'value': 5},
    {'source': 9, 'target': 14, 'value': 2},
    {'source': 9, 'target': 15, 'value': 3},
    {'source': 10, 'target': 15, 'value': 4},
    {'source': 10, 'target': 12, 'value': 3},
    {'source': 11, 'target': 12, 'value': 5},
    {'source': 11, 'target': 14, 'value': 2},
    {'source': 11, 'target': 15, 'value': 3},
  ],
};
