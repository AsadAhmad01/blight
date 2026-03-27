// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:freshlens/core/di/register_module.dart' as _i674;
import 'package:freshlens/core/network/network_info.dart' as _i899;
import 'package:freshlens/features/classify/data/datasources/cloud_classify_service.dart'
    as _i755;
import 'package:freshlens/features/classify/data/datasources/tflite_classifier.dart'
    as _i484;
import 'package:freshlens/features/classify/data/repositories/classify_repository_impl.dart'
    as _i194;
import 'package:freshlens/features/classify/domain/repositories/classify_repository.dart'
    as _i101;
import 'package:freshlens/features/classify/domain/usecases/classify_food_usecase.dart'
    as _i977;
import 'package:freshlens/features/classify/presentation/bloc/classify_bloc.dart'
    as _i702;
import 'package:freshlens/features/history/data/datasources/app_database.dart'
    as _i868;
import 'package:freshlens/features/history/data/repositories/history_repository.dart'
    as _i265;
import 'package:freshlens/features/history/presentation/bloc/history_bloc.dart'
    as _i778;
import 'package:freshlens/features/settings/presentation/cubit/settings_cubit.dart'
    as _i404;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.singleton<_i558.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    gh.singleton<_i868.AppDatabase>(() => _i868.AppDatabase());
    gh.lazySingleton<_i484.TFLiteClassifier>(() => _i484.TFLiteClassifier());
    gh.lazySingleton<_i265.HistoryRepository>(
        () => _i265.HistoryRepository(gh<_i868.AppDatabase>()));
    gh.lazySingleton<_i899.NetworkInfo>(
        () => _i899.NetworkInfoImpl(gh<_i895.Connectivity>()));
    gh.factory<_i404.SettingsCubit>(
        () => _i404.SettingsCubit(gh<_i558.FlutterSecureStorage>()));
    gh.singleton<_i361.Dio>(
        () => registerModule.dio(gh<_i558.FlutterSecureStorage>()));
    gh.factory<_i778.HistoryBloc>(
        () => _i778.HistoryBloc(gh<_i265.HistoryRepository>()));
    gh.lazySingleton<_i755.CloudClassifyService>(
        () => _i755.CloudClassifyServiceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i101.ClassifyRepository>(
        () => _i194.ClassifyRepositoryImpl(
              gh<_i484.TFLiteClassifier>(),
              gh<_i755.CloudClassifyService>(),
              gh<_i899.NetworkInfo>(),
              gh<_i558.FlutterSecureStorage>(),
            ));
    gh.factory<_i977.ClassifyFoodUseCase>(
        () => _i977.ClassifyFoodUseCase(gh<_i101.ClassifyRepository>()));
    gh.factory<_i702.ClassifyBloc>(
        () => _i702.ClassifyBloc(gh<_i977.ClassifyFoodUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i674.RegisterModule {}
