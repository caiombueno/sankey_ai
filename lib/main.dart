import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sankey_ai/flavors.dart';
import 'package:sankey_ai/src/service_locator/service_locator.dart';
import 'package:sankey_ai/src/ui/router/router.dart';

Future<void> runMainApp({required FirebaseOptions firebaseOptions}) async {
  WidgetsFlutterBinding.ensureInitialized();

  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  await Firebase.initializeApp(options: firebaseOptions);

  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sankey Diagram Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: sl<AppRouter>().config(),
    );
  }
}
