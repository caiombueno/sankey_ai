part of 'diagram_config_data_repository.dart';

extension on DiagramConfigSM {
  DiagramConfig toDiagramConfig() {
    return DiagramConfig(
      nodes: nodes.map((node) => node.toDiagramNode()).toList(),
      links: links.map((link) => link.toDiagramLink()).toList(),
    );
  }
}

extension on DiagramNodeSM {
  DiagramNode toDiagramNode() {
    return DiagramNode(
      id: id,
      label: label,
    );
  }
}

extension on DiagramLinkSM {
  DiagramLink toDiagramLink() {
    return DiagramLink(
      source: source,
      target: target,
      value: value,
    );
  }
}
