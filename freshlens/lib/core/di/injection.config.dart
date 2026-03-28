// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:blight/core/di/register_module.dart' as _i588;
import 'package:blight/core/network/network_info.dart' as _i540;
import 'package:blight/features/classify/data/datasources/cloud_classify_service.dart'
    as _i731;
import 'package:blight/features/classify/data/datasources/tflite_classifier.dart'
    as _i53;
import 'package:blight/features/classify/data/repositories/classify_repository_impl.dart'
    as _i533;
import 'package:blight/features/classify/domain/repositories/classify_repository.dart'
    as _i849;
import 'package:blight/features/classify/domain/usecases/classify_food_usecase.dart'
    as _i27;
import 'package:blight/features/classify/presentation/bloc/classify_bloc.dart'
    as _i235;
import 'package:blight/features/history/data/datasources/app_database.dart'
    as _i614;
import 'package:blight/features/history/data/repositories/history_repository.dart'
    as _i148;
import 'package:blight/features/history/presentation/bloc/history_bloc.dart'
    as _i516;
import 'package:blight/features/settings/data/datasources/notification_service.dart'
    as _i48;
import 'package:blight/features/settings/presentation/cubit/settings_cubit.dart'
    as _i779;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
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
    gh.singleton<_i614.AppDatabase>(() => _i614.AppDatabase());
    gh.lazySingleton<_i48.NotificationService>(
        () => _i48.NotificationService());
    gh.lazySingleton<_i53.TFLiteClassifier>(() => _i53.TFLiteClassifier());
    gh.lazySingleton<_i148.HistoryRepository>(
        () => _i148.HistoryRepository(gh<_i614.AppDatabase>()));
    gh.lazySingleton<_i540.NetworkInfo>(
        () => _i540.NetworkInfoImpl(gh<_i895.Connectivity>()));
    gh.factory<_i516.HistoryBloc>(
        () => _i516.HistoryBloc(gh<_i148.HistoryRepository>()));
    gh.factory<_i779.SettingsCubit>(
        () => _i779.SettingsCubit(gh<_i558.FlutterSecureStorage>()));
    gh.singleton<_i361.Dio>(
        () => registerModule.dio(gh<_i558.FlutterSecureStorage>()));
    gh.lazySingleton<_i731.CloudClassifyService>(
        () => _i731.CloudClassifyServiceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i849.ClassifyRepository>(
        () => _i533.ClassifyRepositoryImpl(
              gh<_i53.TFLiteClassifier>(),
              gh<_i731.CloudClassifyService>(),
              gh<_i540.NetworkInfo>(),
              gh<_i558.FlutterSecureStorage>(),
            ));
    gh.factory<_i27.ClassifyFoodUseCase>(
        () => _i27.ClassifyFoodUseCase(gh<_i849.ClassifyRepository>()));
    gh.factory<_i235.ClassifyBloc>(
        () => _i235.ClassifyBloc(gh<_i27.ClassifyFoodUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i588.RegisterModule {}
