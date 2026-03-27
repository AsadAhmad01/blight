import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

class FreshLensApp extends StatelessWidget {
  const FreshLensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshLens',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system, // To be changed via settings
      home: const Scaffold(
        body: Center(
          child: Text('FreshLens Foundation'),
        ),
      ),
    );
  }
}
