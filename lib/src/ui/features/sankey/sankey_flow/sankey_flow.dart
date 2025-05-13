import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sankey_ai/src/ui/features/sankey/sankey_flow/cubit/sankey_flow_cubit.dart';
import 'package:sankey_ai/src/ui/router/router.gr.dart';

@RoutePage()
class SankeyFlow extends StatelessWidget implements AutoRouteWrapper {
  const SankeyFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SankeyFlowCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SankeyFlowCubit, SankeyFlowState>(
      builder: (context, state) {
        final prompt = state.prompt;
        return AutoRouter.declarative(
          routes: (PendingRoutesHandler handler) {
            return [
              const InsertPromptRoute(),
              if (prompt != null)
                SankeyDiagramRoute(
                  prompt: prompt,
                ),
            ];
          },
        );
      },
    );
  }
}
