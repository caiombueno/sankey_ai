import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:sankey_ai/src/ui/router/router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen|Modal,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SankeyFlow.page,
          children: [
            AutoRoute(
              usesPathAsKey: true,
              page: InsertPromptRoute.page,
            ),
            AutoRoute(
              usesPathAsKey: true,
              page: SankeyDiagramRoute.page,
            ),
          ],
        ),
      ];

  @disposeMethod
  @override
  void dispose() {
    super.dispose();
  }
}
