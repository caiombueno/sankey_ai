import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:sankey_ai/src/data/diagram_config/data_sources/remote/diagram_config_data_remote_data_source.dart';
import 'package:sankey_ai/src/data/diagram_config/models/diagram_config_sm.dart';
import 'package:sankey_ai/src/domain_models/diagram_config.dart';
import 'package:sankey_ai/src/domain_models/failures.dart';

part 'diagram_config_data_repository_mappers.dart';

@lazySingleton
class DiagramConfigDataRepository {
  final DiagramConfigDataRemoteDataSource _remoteDataSource;

  DiagramConfigDataRepository(this._remoteDataSource);

  Future<Either<Failure, DiagramConfig>> getDiagramConfig(
      {required String prompt}) async {
    final remoteConfig =
        await _remoteDataSource.getDiagramConfig(prompt: prompt);
    return remoteConfig.map((config) => config.toDiagramConfig());
  }
}
