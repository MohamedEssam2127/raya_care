import 'package:flutter/material.dart';
import 'package:raya_care/features/installation_request/presentation/installation_request_screen.dart';
import 'package:raya_care/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raya Care',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.build(dark: false, arabic: true),
      darkTheme: AppTheme.build(dark: true, arabic: true),
      themeMode: ThemeMode.light,
      home: const InstallationRequestScreen(),
    );
  }
}
