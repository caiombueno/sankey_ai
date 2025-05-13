import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';

@module
@injectable
abstract class FirebaseModule {
  @lazySingleton
  FirebaseFunctions get firebaseFunctions => FirebaseFunctions.instance;
}
