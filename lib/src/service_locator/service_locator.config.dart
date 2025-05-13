// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_functions/cloud_functions.dart' as _i809;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/diagram_config/data_sources/remote/diagram_config_data_remote_data_source.dart'
    as _i1035;
import '../data/diagram_config/repositories/diagram_config_data_repository.dart'
    as _i414;
import '../ui/router/router.dart' as _i516;
import 'modules/firebase_module.dart' as _i398;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i516.AppRouter>(
      () => _i516.AppRouter(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i809.FirebaseFunctions>(
        () => firebaseModule.firebaseFunctions);
    gh.singleton<_i1035.DiagramConfigDataRemoteDataSource>(() =>
        _i1035.DiagramConfigDataRemoteDataSource(
            gh<_i809.FirebaseFunctions>()));
    gh.lazySingleton<_i414.DiagramConfigDataRepository>(() =>
        _i414.DiagramConfigDataRepository(
            gh<_i1035.DiagramConfigDataRemoteDataSource>()));
    return this;
  }
}

class _$FirebaseModule extends _i398.FirebaseModule {}
