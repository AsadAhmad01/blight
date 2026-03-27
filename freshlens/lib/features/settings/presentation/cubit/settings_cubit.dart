import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/background_worker.dart';

part 'settings_cubit.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool useCloudAi,
    @Default(false) bool expiryRemindersEnabled,
  }) = _SettingsState;
}

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final FlutterSecureStorage _storage;

  SettingsCubit(this._storage) : super(const SettingsState()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final themeStr = await _storage.read(key: 'theme_mode') ?? 'system';
    final cloudAiStr = await _storage.read(key: 'use_cloud_ai') ?? 'false';
    final remindersStr = await _storage.read(key: 'reminders_enabled') ?? 'false';

    final themeMode = ThemeMode.values.firstWhere(
      (e) => e.name == themeStr,
      orElse: () => ThemeMode.system,
    );

    emit(state.copyWith(
      themeMode: themeMode,
      useCloudAi: cloudAiStr == 'true',
      expiryRemindersEnabled: remindersStr == 'true',
    ));
  }

  Future<void> updateTheme(ThemeMode mode) async {
    await _storage.write(key: 'theme_mode', value: mode.name);
    emit(state.copyWith(themeMode: mode));
  }

  Future<void> toggleCloudAi(bool useCloud) async {
    await _storage.write(key: 'use_cloud_ai', value: useCloud.toString());
    emit(state.copyWith(useCloudAi: useCloud));
  }

  Future<void> toggleReminders(bool enabled) async {
    await _storage.write(key: 'reminders_enabled', value: enabled.toString());
    emit(state.copyWith(expiryRemindersEnabled: enabled));
    if (enabled) {
      BackgroundWorker.registerPeriodicTask();
    } else {
      BackgroundWorker.cancelAll();
    }
  }
}
