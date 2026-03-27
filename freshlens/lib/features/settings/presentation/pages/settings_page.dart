import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../cubit/settings_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsCubit>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            final cubit = context.read<SettingsCubit>();
            return ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.brightness_6),
                  title: const Text('Theme Mode'),
                  trailing: DropdownButton<ThemeMode>(
                    value: state.themeMode,
                    items: ThemeMode.values.map((mode) {
                      return DropdownMenuItem(
                        value: mode,
                        child: Text(mode.name.toUpperCase()),
                      );
                    }).toList(),
                    onChanged: (mode) {
                      if (mode != null) cubit.updateTheme(mode);
                    },
                  ),
                ),
                const Divider(),
                SwitchListTile(
                  secondary: const Icon(Icons.cloud),
                  title: const Text('Use Cloud AI Model'),
                  subtitle: const Text('Sends images to HuggingFace instead of on-device TFLite'),
                  value: state.useCloudAi,
                  onChanged: (val) => cubit.toggleCloudAi(val),
                ),
                const Divider(),
                SwitchListTile(
                  secondary: const Icon(Icons.notifications_active),
                  title: const Text('Expiry Reminders'),
                  subtitle: const Text('Send local notification reminders to check stock'),
                  value: state.expiryRemindersEnabled,
                  onChanged: (val) => cubit.toggleReminders(val),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
