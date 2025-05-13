import 'package:cloud_functions/cloud_functions.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:sankey_ai/src/domain_models/failures.dart';
import 'package:sankey_ai/src/data/diagram_config/models/diagram_config_sm.dart';

@singleton
class DiagramConfigDataRemoteDataSource {
  final FirebaseFunctions _firebaseFunctions;

  DiagramConfigDataRemoteDataSource(this._firebaseFunctions);

  Future<Either<Failure, DiagramConfigSM>> getDiagramConfig({
    required String prompt,
  }) async {
    try {
      final generateSankeyConfigFunction =
          _firebaseFunctions.httpsCallable('generateSankeyConfigFunction');

      final result = await generateSankeyConfigFunction(prompt);

      // Use the extension to transform the data into a properly typed Map
      final Map<String, dynamic> typedData = result.data.toTypedMap();

      final serializedData = DiagramConfigSMMapper.fromMap(typedData);

      return Right(serializedData);
    } catch (e) {
      return Left(UnknownFailure(underlyingException: e));
    }
  }
}

/// Extension to transform Firebase Function result data into properly typed data
extension on dynamic {
  /// Transforms dynamic data (typically from Firebase Functions result) into a properly typed Map<String, dynamic>
  /// with nested lists and maps properly converted to their correct types
  Map<String, dynamic> toTypedMap() {
    if (this is! Map) {
      throw ArgumentError('Data must be a Map');
    }

    final Map<String, dynamic> typedData =
        Map<String, dynamic>.from(this as Map);

    // Process all list fields that contain maps
    for (final entry in typedData.entries) {
      if (entry.value is List) {
        final List<dynamic> list = entry.value as List<dynamic>;
        // If the list contains maps, convert each map to a properly typed Map<String, dynamic>
        if (list.isNotEmpty && list.first is Map) {
          typedData[entry.key] = list
              .map((item) =>
                  item is Map ? Map<String, dynamic>.from(item) : item)
              .toList();
        }
      }
    }

    return typedData;
  }
}
