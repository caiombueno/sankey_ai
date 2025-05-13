import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:sankey_ai/src/data/diagram_config/models/diagram_config_sm.dart';

void main() {
  group('DiagramNodeSM', () {
    test('should create a DiagramNodeSM instance', () {
      // Arrange
      const id = 1;
      const label = 'Node 1';

      // Act
      final node = DiagramNodeSM(id: id, label: label);

      // Assert
      expect(node.id, equals(id));
      expect(node.label, equals(label));
    });

    test('should create a DiagramNodeSM instance with null label', () {
      // Arrange
      const id = 1;

      // Act
      final node = DiagramNodeSM(id: id, label: null);

      // Assert
      expect(node.id, equals(id));
      expect(node.label, isNull);
    });

    test('should deserialize from JSON', () {
      // Arrange
      const jsonStr = '{"id": 1, "label": "Node 1"}';

      // Act
      final node = DiagramNodeSMMapper.fromJson(jsonStr);

      // Assert
      expect(node.id, equals(1));
      expect(node.label, equals('Node 1'));
    });

    test('should deserialize from Map', () {
      // Arrange
      final map = {'id': 1, 'label': 'Node 1'};

      // Act
      final node = DiagramNodeSMMapper.fromMap(map);

      // Assert
      expect(node.id, equals(1));
      expect(node.label, equals('Node 1'));
    });

    test('should compare equal objects correctly', () {
      // Arrange
      final node1 = DiagramNodeSM(id: 1, label: 'Node 1');
      final node2 = DiagramNodeSM(id: 1, label: 'Node 1');
      final node3 = DiagramNodeSM(id: 2, label: 'Node 1');

      // Act & Assert
      expect(node1, equals(node2));
      expect(node1, isNot(equals(node3)));
      expect(node1.hashCode, equals(node2.hashCode));
      expect(node1.hashCode, isNot(equals(node3.hashCode)));
    });

    test('should create a copy with updated values using copyWith', () {
      // Arrange
      final node = DiagramNodeSM(id: 1, label: 'Node 1');

      // Act
      final updatedNode = node.copyWith(id: 2, label: 'Updated Node');

      // Assert
      expect(updatedNode.id, equals(2));
      expect(updatedNode.label, equals('Updated Node'));
      expect(node.id, equals(1)); // Original should not change
      expect(node.label, equals('Node 1')); // Original should not change
    });

    test('should create a copy with only some updated values using copyWith',
        () {
      // Arrange
      final node = DiagramNodeSM(id: 1, label: 'Node 1');

      // Act
      final updatedNode = node.copyWith(id: 2);

      // Assert
      expect(updatedNode.id, equals(2));
      expect(updatedNode.label, equals('Node 1')); // Should keep original value
    });

    test('should generate correct string representation', () {
      // Arrange
      final node = DiagramNodeSM(id: 1, label: 'Node 1');

      // Act
      final stringRepresentation = node.toString();

      // Assert
      expect(stringRepresentation, contains('DiagramNodeSM'));
      expect(stringRepresentation, contains('id: 1'));
      expect(stringRepresentation, contains('label: Node 1'));
    });
  });

  group('DiagramLinkSM', () {
    test('should create a DiagramLinkSM instance', () {
      // Arrange
      const source = 1;
      const target = 2;
      const value = 10.5;

      // Act
      final link = DiagramLinkSM(source: source, target: target, value: value);

      // Assert
      expect(link.source, equals(source));
      expect(link.target, equals(target));
      expect(link.value, equals(value));
    });

    test('should create a DiagramLinkSM instance with null value', () {
      // Arrange
      const source = 1;
      const target = 2;

      // Act
      final link = DiagramLinkSM(source: source, target: target, value: null);

      // Assert
      expect(link.source, equals(source));
      expect(link.target, equals(target));
      expect(link.value, isNull);
    });

    test('should deserialize from JSON', () {
      // Arrange
      const jsonStr = '{"source": 1, "target": 2, "value": 10.5}';

      // Act
      final link = DiagramLinkSMMapper.fromJson(jsonStr);

      // Assert
      expect(link.source, equals(1));
      expect(link.target, equals(2));
      expect(link.value, equals(10.5));
    });

    test('should deserialize from Map', () {
      // Arrange
      final map = {'source': 1, 'target': 2, 'value': 10.5};

      // Act
      final link = DiagramLinkSMMapper.fromMap(map);

      // Assert
      expect(link.source, equals(1));
      expect(link.target, equals(2));
      expect(link.value, equals(10.5));
    });

    test('should compare equal objects correctly', () {
      // Arrange
      final link1 = DiagramLinkSM(source: 1, target: 2, value: 10.5);
      final link2 = DiagramLinkSM(source: 1, target: 2, value: 10.5);
      final link3 = DiagramLinkSM(source: 1, target: 3, value: 10.5);

      // Act & Assert
      expect(link1, equals(link2));
      expect(link1, isNot(equals(link3)));
      expect(link1.hashCode, equals(link2.hashCode));
      expect(link1.hashCode, isNot(equals(link3.hashCode)));
    });

    test('should create a copy with updated values using copyWith', () {
      // Arrange
      final link = DiagramLinkSM(source: 1, target: 2, value: 10.5);

      // Act
      final updatedLink = link.copyWith(source: 3, target: 4, value: 20.5);

      // Assert
      expect(updatedLink.source, equals(3));
      expect(updatedLink.target, equals(4));
      expect(updatedLink.value, equals(20.5));
      expect(link.source, equals(1)); // Original should not change
      expect(link.target, equals(2)); // Original should not change
      expect(link.value, equals(10.5)); // Original should not change
    });

    test('should create a copy with only some updated values using copyWith',
        () {
      // Arrange
      final link = DiagramLinkSM(source: 1, target: 2, value: 10.5);

      // Act
      final updatedLink = link.copyWith(source: 3);

      // Assert
      expect(updatedLink.source, equals(3));
      expect(updatedLink.target, equals(2)); // Should keep original value
      expect(updatedLink.value, equals(10.5)); // Should keep original value
    });

    test('should generate correct string representation', () {
      // Arrange
      final link = DiagramLinkSM(source: 1, target: 2, value: 10.5);

      // Act
      final stringRepresentation = link.toString();

      // Assert
      expect(stringRepresentation, contains('DiagramLinkSM'));
      expect(stringRepresentation, contains('source: 1'));
      expect(stringRepresentation, contains('target: 2'));
      expect(stringRepresentation, contains('value: 10.5'));
    });
  });

  group('DiagramConfigSM', () {
    test('should create a DiagramConfigSM instance with default values', () {
      // Arrange & Act
      final config = DiagramConfigSM();

      // Assert
      expect(config.nodes, isEmpty);
      expect(config.links, isEmpty);
    });

    test('should create a DiagramConfigSM instance with provided values', () {
      // Arrange
      final nodes = [
        DiagramNodeSM(id: 1, label: 'Node 1'),
        DiagramNodeSM(id: 2, label: 'Node 2'),
      ];
      final links = [
        DiagramLinkSM(source: 1, target: 2, value: 10.5),
      ];

      // Act
      final config = DiagramConfigSM(nodes: nodes, links: links);

      // Assert
      expect(config.nodes, equals(nodes));
      expect(config.links, equals(links));
    });

    test('should deserialize from JSON', () {
      // Arrange
      const jsonStr = '''
      {
        "nodes": [
          {"id": 1, "label": "Node 1"},
          {"id": 2, "label": "Node 2"}
        ],
        "links": [
          {"source": 1, "target": 2, "value": 10.5}
        ]
      }
      ''';

      // Act
      final config = DiagramConfigSMMapper.fromJson(jsonStr);

      // Assert
      expect(config.nodes.length, equals(2));
      expect(config.nodes[0].id, equals(1));
      expect(config.nodes[0].label, equals('Node 1'));
      expect(config.nodes[1].id, equals(2));
      expect(config.nodes[1].label, equals('Node 2'));
      expect(config.links.length, equals(1));
      expect(config.links[0].source, equals(1));
      expect(config.links[0].target, equals(2));
      expect(config.links[0].value, equals(10.5));
    });

    test('should deserialize from Map', () {
      // Arrange
      final map = {
        'nodes': [
          {'id': 1, 'label': 'Node 1'},
          {'id': 2, 'label': 'Node 2'}
        ],
        'links': [
          {'source': 1, 'target': 2, 'value': 10.5}
        ]
      };

      // Act
      final config = DiagramConfigSMMapper.fromMap(map);

      // Assert
      expect(config.nodes.length, equals(2));
      expect(config.nodes[0].id, equals(1));
      expect(config.nodes[0].label, equals('Node 1'));
      expect(config.nodes[1].id, equals(2));
      expect(config.nodes[1].label, equals('Node 2'));
      expect(config.links.length, equals(1));
      expect(config.links[0].source, equals(1));
      expect(config.links[0].target, equals(2));
      expect(config.links[0].value, equals(10.5));
    });

    test('should compare equal objects correctly', () {
      // Arrange
      final config1 = DiagramConfigSM(
        nodes: [DiagramNodeSM(id: 1, label: 'Node 1')],
        links: [DiagramLinkSM(source: 1, target: 2, value: 10.5)],
      );
      final config2 = DiagramConfigSM(
        nodes: [DiagramNodeSM(id: 1, label: 'Node 1')],
        links: [DiagramLinkSM(source: 1, target: 2, value: 10.5)],
      );
      final config3 = DiagramConfigSM(
        nodes: [DiagramNodeSM(id: 2, label: 'Node 2')],
        links: [DiagramLinkSM(source: 1, target: 2, value: 10.5)],
      );

      // Act & Assert
      expect(config1, equals(config2));
      expect(config1, isNot(equals(config3)));
      expect(config1.hashCode, equals(config2.hashCode));
      expect(config1.hashCode, isNot(equals(config3.hashCode)));
    });

    test('should create a copy with updated values using copyWith', () {
      // Arrange
      final config = DiagramConfigSM(
        nodes: [DiagramNodeSM(id: 1, label: 'Node 1')],
        links: [DiagramLinkSM(source: 1, target: 2, value: 10.5)],
      );
      final newNodes = [
        DiagramNodeSM(id: 2, label: 'Node 2'),
        DiagramNodeSM(id: 3, label: 'Node 3'),
      ];
      final newLinks = [
        DiagramLinkSM(source: 2, target: 3, value: 20.5),
      ];

      // Act
      final updatedConfig = config.copyWith(nodes: newNodes, links: newLinks);

      // Assert
      expect(updatedConfig.nodes, equals(newNodes));
      expect(updatedConfig.links, equals(newLinks));
      expect(config.nodes.length, equals(1)); // Original should not change
      expect(config.links.length, equals(1)); // Original should not change
    });

    test('should create a copy with only some updated values using copyWith',
        () {
      // Arrange
      final config = DiagramConfigSM(
        nodes: [DiagramNodeSM(id: 1, label: 'Node 1')],
        links: [DiagramLinkSM(source: 1, target: 2, value: 10.5)],
      );
      final newNodes = [
        DiagramNodeSM(id: 2, label: 'Node 2'),
        DiagramNodeSM(id: 3, label: 'Node 3'),
      ];

      // Act
      final updatedConfig = config.copyWith(nodes: newNodes);

      // Assert
      expect(updatedConfig.nodes, equals(newNodes));
      expect(updatedConfig.links,
          equals(config.links)); // Should keep original value
    });

    test('should generate correct string representation', () {
      // Arrange
      final config = DiagramConfigSM(
        nodes: [DiagramNodeSM(id: 1, label: 'Node 1')],
        links: [DiagramLinkSM(source: 1, target: 2, value: 10.5)],
      );

      // Act
      final stringRepresentation = config.toString();

      // Assert
      expect(stringRepresentation, contains('DiagramConfigSM'));
      expect(stringRepresentation, contains('nodes: '));
      expect(stringRepresentation, contains('links: '));
    });
  });
}
