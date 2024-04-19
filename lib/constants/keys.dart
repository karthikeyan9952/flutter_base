import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

FlutterSecureStorage secureStorage = const FlutterSecureStorage();

//declare logger
var logger = Logger(filter: null, printer: PrettyPrinter(), output: null);

//keys
GlobalKey<ScaffoldState> mainKey = GlobalKey<ScaffoldState>();

//snackbar key
final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();
