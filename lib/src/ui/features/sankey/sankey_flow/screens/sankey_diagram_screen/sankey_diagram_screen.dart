import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sankey_ai/src/ui/features/sankey/sankey_flow/screens/sankey_diagram_screen/cubit/sankey_diagram_cubit.dart';
import 'package:sankey_ai/src/ui/features/sankey/sankey_flow/screens/sankey_diagram_screen/widgets/sankey_diagram_widget.dart';

@RoutePage()
class SankeyDiagramScreen extends StatelessWidget implements AutoRouteWrapper {
  const SankeyDiagramScreen({super.key, required this.prompt});
  final String prompt;

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SankeyDiagramCubit(prompt: prompt)..generateDiagram(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sankey Diagram'),
      ),
      body: BlocBuilder<SankeyDiagramCubit, SankeyDiagramState>(
        builder: (context, state) {
          if (state is SankeyDiagramFailed) {
            return const Center(
              child: Text('Failed to generate diagram'),
            );
          }

          if (state is SankeyDiagramLoaded) {
            return CustomSankeyDiagram(
              dataSet: state.dataSet,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
