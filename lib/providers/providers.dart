import 'package:flutter_base/constants/keys.dart';
import 'package:flutter_base/providers/auth_provider.dart';
import 'package:flutter_base/theme/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// Declaration for all providers
List<SingleChildWidget> providers = [
  ChangeNotifierProvider<ThemeManager>(create: (context) => ThemeManager()),
  ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
];

var themeManager =
    Provider.of<ThemeManager>(mainKey.currentContext!, listen: false);

var authProvider =
    Provider.of<AuthProvider>(mainKey.currentContext!, listen: false);
