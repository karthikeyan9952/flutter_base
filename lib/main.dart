import 'package:flutter/material.dart';
import 'package:flutter_base/providers/providers.dart';
import 'package:provider/provider.dart';

import 'constants/keys.dart';
import 'services/route/app_router.dart';
import 'theme/theme_constants.dart';
import 'theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: providers, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(
      builder: (context, themeManager, child) {
        return MaterialApp.router(
          key: mainKey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Base',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeManager.themeMode,
          routerConfig: router,
          scaffoldMessengerKey: snackbarKey,
        );
      },
    );
  }
}
