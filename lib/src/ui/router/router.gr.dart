// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:sankey_ai/src/ui/features/sankey/sankey_flow/sankey_flow.dart'
    as _i3;
import 'package:sankey_ai/src/ui/features/sankey/sankey_flow/screens/insert_prompt_screen/insert_prompt_screen.dart'
    as _i1;
import 'package:sankey_ai/src/ui/features/sankey/sankey_flow/screens/sankey_diagram_screen/sankey_diagram_screen.dart'
    as _i2;

/// generated route for
/// [_i1.InsertPromptScreen]
class InsertPromptRoute extends _i4.PageRouteInfo<void> {
  const InsertPromptRoute({List<_i4.PageRouteInfo>? children})
    : super(InsertPromptRoute.name, initialChildren: children);

  static const String name = 'InsertPromptRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.InsertPromptScreen();
    },
  );
}

/// generated route for
/// [_i2.SankeyDiagramScreen]
class SankeyDiagramRoute extends _i4.PageRouteInfo<SankeyDiagramRouteArgs> {
  SankeyDiagramRoute({
    _i5.Key? key,
    required String prompt,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         SankeyDiagramRoute.name,
         args: SankeyDiagramRouteArgs(key: key, prompt: prompt),
         initialChildren: children,
       );

  static const String name = 'SankeyDiagramRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SankeyDiagramRouteArgs>();
      return _i2.SankeyDiagramScreen(key: args.key, prompt: args.prompt);
    },
  );
}

class SankeyDiagramRouteArgs {
  const SankeyDiagramRouteArgs({this.key, required this.prompt});

  final _i5.Key? key;

  final String prompt;

  @override
  String toString() {
    return 'SankeyDiagramRouteArgs{key: $key, prompt: $prompt}';
  }
}

/// generated route for
/// [_i3.SankeyFlow]
class SankeyFlow extends _i4.PageRouteInfo<void> {
  const SankeyFlow({List<_i4.PageRouteInfo>? children})
    : super(SankeyFlow.name, initialChildren: children);

  static const String name = 'SankeyFlow';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i3.SankeyFlow());
    },
  );
}
